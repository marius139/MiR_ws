#include "ros/ros.h"

//Libraries for openCV
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "opencv2/xfeatures2d.hpp"
#include "opencv2/xfeatures2d/nonfree.hpp"

#define OPENCV_ENABLE_NONFREE

const std::string resources = "/home/ros/MiR_ws/src/simple_navigation_goals/src/resources/";
const int nrMatches = 10;

int main(int argc, char** argv){

  cv::Mat output;
  cv::Mat output2;
  cv::Mat img_1 = cv::imread(resources + "50.jpg", 1);
  cv::Mat img_2 = cv::imread(resources + "50map.jpeg", 1);

  cv::Ptr<cv::xfeatures2d::SIFT> siftFeat = cv::xfeatures2d::SIFT::create(2000);
  std::vector<cv::KeyPoint> keypoints_1, keypoints_2;
  siftFeat->detect(img_1, keypoints_1);
  siftFeat->detect(img_2, keypoints_2);
  ROS_INFO("Keypoints in img 1: %zd", keypoints_1.size());
  ROS_INFO("Keypoints in img 2: %zd", keypoints_2.size());

  if(keypoints_1.size() && keypoints_2.size() >= 1){

  cv::Mat descriptors_1, descriptors_2;
  siftFeat->compute( img_1, keypoints_1, descriptors_1 );
  siftFeat->compute( img_2, keypoints_2, descriptors_2 );


  cv::Ptr<cv::BFMatcher> matcher = cv::BFMatcher::create(cv::NORM_L2);
  std::vector<cv::DMatch> matches;
  matcher->match( descriptors_1, descriptors_2, matches);

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


  cv::FileStorage fsWrite("/home/ros/MiR_ws/src/human_detect/src/descriptors.xml", cv::FileStorage::WRITE );

  while (!fsWrite.isOpened()) {

  }
  fsWrite << "descriptors" << output2;
  fsWrite.release();

  cv::drawMatches(img_1, keypoints_1,img_2, keypoints_2, goodMatches, output);
  cv::imshow("match", output);
  cv::waitKey(0);




  }

  //cv::drawKeypoints(img_2, keypoints_2, output2);
  cv::imshow("Key1", img_2);
  cv::waitKey(0);
}
