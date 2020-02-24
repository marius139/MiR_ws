#include "ros/ros.h"
#include <sstream>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
//Libraries for RealSense
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <std_msgs/Int8.h>
#include <tf/transform_listener.h>
#include <sound_play/sound_play.h>
#include <unistd.h>

//Path to resources
const std::string resources = "/home/ros/MiR_ws/src/simple_navigation_goals/src/resources/";
//window name
std::string name = "view";
//Current x and y coordinate of the robot
double curXpose;
double curYpose;
double curAngle;

//starting image being displayed
const int startImg = 1;
//Current image being displayed
int curImg = startImg;
//Image that should be displayed
int displayImg = startImg;

int soundToPlay = 0;

void moveBaseCallback(const geometry_msgs::PoseWithCovarianceStamped msg){

tfScalar yaw,pitch,roll;
curXpose = msg.pose.pose.position.x;
curYpose = msg.pose.pose.position.y;

tf::Quaternion quat;
quat = tf::Quaternion(msg.pose.pose.orientation.x,msg.pose.pose.orientation.y,msg.pose.pose.orientation.z,msg.pose.pose.orientation.w);
tf::Matrix3x3 mat(quat);
mat.getEulerYPR(yaw,pitch,roll);
ROS_INFO("yaw: %f, pitch: %f, roll: %f", yaw,pitch,roll);
curAngle = yaw;
}

void projectorCallback(const std_msgs::Int8 msg){
  displayImg=msg.data;
}
void speakerCallback(const std_msgs::Int8 msg){
  soundToPlay = msg.data;

}

//Project direction of MiR
void projectImage(int n){

  cv::Mat imageToProject;

  switch(n){
    case 1:
      imageToProject = cv::imread(resources + "arrowStraight.jpg");
      break;
    case 2:
      imageToProject = cv::imread(resources + "arrowLeft.png");
      break;
    case 3:
      imageToProject = cv::imread(resources + "arrowRight.png");
      break;
  }

  cv::namedWindow(name, cv::WINDOW_NORMAL);
  cv::moveWindow(name, 1366,1);
  cv::setWindowProperty(name, 0, cv::WINDOW_FULLSCREEN);
  cv::startWindowThread();
  cv::imshow(name, imageToProject);
  cv::waitKey(50);
}
//Sound play
  void playSound(int n, sound_play::SoundClient& sc){

    switch(n){
     case 1:
       sc.say("This works. This works. This works");
        break;

     case 2:
      sc.playWave(resources+"power.wav");
        break;
    }
  }

int main(int argc, char** argv){

  //Ros nodes
  ros::init(argc, argv, "projectImages");
  ros::NodeHandle nh;
  sound_play::SoundClient sc;
  ros::Subscriber sub1 = nh.subscribe<geometry_msgs::PoseWithCovarianceStamped>("/amcl_pose", 10, moveBaseCallback);
  ros::Subscriber sub2 = nh.subscribe<std_msgs::Int8>("/projector", 10, projectorCallback);
  ros::Subscriber sub3 = nh.subscribe<std_msgs::Int8>("/speaker", 10, speakerCallback);

  //projectImage(startImg);

 while(nh.ok()){

   playSound(soundToPlay, sc);

   if(curImg != displayImg) {
     projectImage(displayImg);
     curImg = displayImg;
    }

  soundToPlay = 0;
  ros::spinOnce();

 }
}
