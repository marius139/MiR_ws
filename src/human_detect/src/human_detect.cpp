#include "ros/ros.h"

//Libraries for openCV
#include <sstream>

#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include "opencv2/xfeatures2d.hpp"
#include "opencv2/xfeatures2d/nonfree.hpp"

#define OPENCV_ENABLE_NONFREE

using namespace std;
using namespace cv;

//Path to folder to store descriptors
const std::string desPath = "/home/ros/MiR_ws/src/human_detect/src/";
//Path to resources
const std::string resources = "/home/ros/MiR_ws/src/simple_navigation_goals/src/resources/";
const int nrMatches = 10;


void hogDetect(){
  /// Create a videoreader interface
     VideoCapture cap(resources+"test.mp4");
     Mat current_frame;
     Mat img;
     /// Set up the pedestrian detector --> let us take the default one
     HOGDescriptor hog;
     hog.setSVMDetector(HOGDescriptor::getDefaultPeopleDetector());

     /// Set up tracking vector
     vector<Point> track;

     while(true){
         /// Grab a single frame from the video
         cap >> current_frame;

         /// Check if the frame has content
         if(current_frame.empty()){
             cerr << "Video has ended or bad frame was read. Quitting." << endl;
             return;
         }

         cv::resize(current_frame, img, cv::Size(640,360));
         /// run the detector with default parameters. to get a higher hit-rate
         /// (and more false alarms, respectively), decrease the hitThreshold and
         /// groupThreshold (set groupThreshold to 0 to turn off the grouping completely).

         ///image, vector of rectangles, hit threshold, win stride, padding, scale, group th

         vector<Rect> found;
         vector<double> weights;

         hog.detectMultiScale(img, found, weights);

         /// draw detections and store location
         for( size_t i = 0; i < found.size(); i++ )
         {
             Rect r = found[i];
             rectangle(img, found[i], cv::Scalar(0,0,255), 3);
             stringstream temp;
             temp << weights[i];
             putText(img, temp.str(),Point(found[i].x,found[i].y+50), FONT_HERSHEY_SIMPLEX, 1, Scalar(0,0,255));
             track.push_back(Point(found[i].x+found[i].width/2,found[i].y+found[i].height/2));
         }

         /// plot the track so far
         for(size_t i = 1; i < track.size(); i++){
             line(img, track[i-1], track[i], Scalar(255,255,0), 2);
         }

         /// Show
         namedWindow("person",WINDOW_AUTOSIZE);
         //resizeWindow("person", 600,600);
         imshow("person", img);
         waitKey(1);
     }


}

void SIFTfeatureExstract(){

  Mat output;

  int  	    nfeatures = 15;
	int  	    nOctaveLayers = 3;//3
	double  	contrastThreshold = 0.04;//0.04
	double  	edgeThreshold = 250;//10
	double  	sigma = 1.6;//1.6
  cv::Ptr<cv::xfeatures2d::SIFT> siftFeat = cv::xfeatures2d::SIFT::create(nfeatures,nOctaveLayers,contrastThreshold,edgeThreshold,sigma);

  std::vector<cv::KeyPoint> keypoints_1;
  Mat descriptors_1;
  cv::FileStorage fsWrite(desPath+"descriptors.txt", cv::FileStorage::WRITE );

  for(int i = 0;i<15;i++){

    std::ostringstream k;

    if(i<9){
    k << "yalefaces/subject0"<<i+1<<"normal.png";
    }else{
    k << "yalefaces/subject"<<i+1<<"normal.png";
    }

    std::string faces(k.str());
    ROS_INFO("path: %s", faces.c_str());
    Mat cur_face = cv::imread(resources + faces, 0);

    siftFeat->detect(cur_face, keypoints_1);
    siftFeat->compute(cur_face, keypoints_1, descriptors_1 );

    std::ostringstream s;
    s << "descriptor" << i;
    std::string indexer(s.str());
    fsWrite << indexer << descriptors_1;


    cv::drawKeypoints(cur_face, keypoints_1, output);
    cv::imshow("img", output);
    cv::waitKey(1000);

 }
 fsWrite.release();

}

void siftMatch(){


  int  	    nfeatures = 1000;
  int  	    nOctaveLayers = 3;//3
  double  	contrastThreshold = 0.1;//0.04
  double  	edgeThreshold = 10;//10
  double  	sigma = 1.6;//1.6
  cv::Ptr<cv::xfeatures2d::SIFT> siftFeat = cv::xfeatures2d::SIFT::create(nfeatures,nOctaveLayers,contrastThreshold,edgeThreshold,sigma);

  std::vector<cv::KeyPoint> keypoints_2;
  Mat descriptors_2;

  /*

    siftFeat->detect(img_1, keypoints_1);
    siftFeat->detect(img_2, keypoints_2);
    ROS_INFO("Keypoints in img 1: %zd", keypoints_1.size());
    ROS_INFO("Keypoints in img 2: %zd", keypoints_2.size());

    if(keypoints_1.size() && keypoints_2.size() >= 1){


    siftFeat->compute( img_1, keypoints_1, descriptors_1 );
    siftFeat->compute( img_2, keypoints_2, descriptors_2 );

    //Filestorage
    cv::FileStorage fsWrite(desPath+"descriptors.txt", cv::FileStorage::WRITE );

    while (!fsWrite.isOpened()) {}
    for(int i=0;i<3;i++){
    std::ostringstream s;
    s << "descriptor" << i;
    std::string indexer(s.str());
    fsWrite << indexer << descriptors_1;
    }
    fsWrite.release();

    cv::FileStorage fsRead(desPath+"descriptors.txt", cv::FileStorage::READ );
    //while (!fsWrite.isOpened()) {}
    fsRead["descriptor0"] >>  descriptors_test;
    //fsRead.release();

    //Matching
    cv::Ptr<cv::BFMatcher> matcher = cv::BFMatcher::create(cv::NORM_L2);
    std::vector<cv::DMatch> matches;
    matcher->match( descriptors_test, descriptors_2, matches);

    std::vector<cv::DMatch> goodMatches;
    std::sort(matches.begin(),matches.end());

    for(int i=0; i<matches.size(); i++){
        ROS_INFO("lowest: %f",matches[i].distance);
      }

    if(matches.size()>nrMatches){
    for(int i=0; i<nrMatches; i++){
        goodMatches.push_back(matches[i]);
      }
    }

    for(int i=0; i<goodMatches.size(); i++){
        ROS_INFO("best: %f",goodMatches[i].distance);
      }




    cv::drawMatches(img_1, keypoints_1,img_2, keypoints_2, goodMatches, output);
    cv::imshow("match", output);
    cv::waitKey(0);

    }

    //cv::drawKeypoints(img_2, keypoints_2, output2);
    cv::imshow("Key1", img_1);
    cv::waitKey(0);
    */

}


int main(int argc, char** argv){

  ros::init(argc, argv, "human_detect");
  ros::NodeHandle nh1;

  while(ros::ok()){
    
  }

  //Subscribe to camera rgb image
  //ros::Subscriber image_sub_ = nh1.subscribe("/camera/color/image_raw", 1,imageCallback);
 ROS_INFO("Version: %i . %i", CV_MAJOR_VERSION,CV_MINOR_VERSION);

  //SIFTfeatureExstract();

}
