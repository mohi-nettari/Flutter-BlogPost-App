
class Post {
String  body;
String  author;
int likes = 0;
bool isTheUserLiked = false;
Post(this.body,this.author);

void likePost(){
  this.isTheUserLiked = !this.isTheUserLiked; 
if(this.isTheUserLiked){
likes+=1;
}else{
likes-=1;
}

}

}