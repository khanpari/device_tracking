class DashList {
  final String name;
  final String disavilable;
  final String totaldis;
  final String image;


  const DashList(
      {required this.name, required this.disavilable, required this.totaldis,required this.image});
}
const alldashlist=[
DashList(
name:'Devices',
disavilable:'0',
totaldis: '',
image:'assets/images/alldevice.png'
),
  DashList(
      name:'Users',
      disavilable:'',
      totaldis: '4',
      image:'assets/images/Username.png'
  ),
];