Print Pickle
 <script src="css/ExtraScreen.css"></script>
<script src="https://aframe.io/releases/1.0.3/aframe.min.js"></script>
<script src="index.js"></script>
<script src="https://unpkg.com/aframe-teleport-controls@0.2.x/dist/aframe-teleport-controls.min.js"></script>
<script src="https://unpkg.com/aframe-controller-cursor-component@0.2.x/dist/aframe-controller-cursor-component.min.js"></script>
<script src="https://rawgit.com/ngokevin/kframe/csstricks/scenes/aincraft/components/random-color.js"></script>
<script src="https://rawgit.com/ngokevin/kframe/csstricks/scenes/aincraft/components/snap.js"></script>
<script src="https://rawgit.com/ngokevin/kframe/csstricks/scenes/aincraft/components/intersection-spawn.js"></script>

<body>
  <button>Return Coler</button>
  <a-scene>
      <a-asset>
        <img id="groundTexture" crossorigin="anonymous" src="https://cdn.aframe.io/a-painter/images/floor.jpg">
        <img id="skyTexture" crossorigin="anonymous" src="https://cdn.aframe.io/a-painter/images/sky.jpg">
        <a-mixin id="voxel"
                geometry="primitive: box; height: 0.5; width: 0.5; depth: 0.5"
                material="shader: standard"
                random-color
                snap="offset: 0.25 0.25 0.25; snap: 0.5 0.5 0.5"></a-mixin>
      </a-asset>

      <a-sky id="sky" src="#skyTexture" radius="32" theta-length="90"></a-sky>

      <a-cylinder id="ground" src="#groundTexture" radius="32" height="0.1"></a-cylinder>

      <a-entity id="teleHand" hand-controls="left" teleport-controls="type: parabolic; collisionEntities: [mixin='voxel'], #ground"></a-entity>
      <a-entity id="blockHand" hand-controls="right" laser-controls intersection-spawn="event: click; mixin: voxel"></a-entity>
     
      <a-camera>
          <a-cursor intersection-spawn="event: click; mixin: voxel"></a-cursor>
      </a-camera>

      <a-entity mixin="voxel" position="-1 0 -2"></a-entity>
      <a-entity mixin="voxel" position="0 0 -2"></a-entity>
      <a-entity mixin="voxel" position="0 1 -2">
          <a-entity animation="attribute: rotation; to: 0 360 0; repeat: indefinite"></a-entity>
      </a-entity>
      <a-entity mixin="voxel" position="1 0 -2"></a-entity>
  </a-scene>
</body>
