# Objects

### About objects

[Objects](https://graphql.github.io/graphql-spec/June2018/#sec-Objects) in GraphQL represent the resources you can access. An object can contain a list of fields, which are specifically typed.

### Book

  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>id</strong> (<a href="scalars.md#int">Int!</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>title</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td></td>
  </tr>
</table>

---

### BookConnection

<p>The connection type for Book.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>edges</strong> (<a href="objects.md#bookedge">[BookEdge]</a>)</td> 
    <td><p>A list of edges.</p></td>
  </tr>
  <tr>
    <td><strong>nodes</strong> (<a href="objects.md#book">[Book]</a>)</td> 
    <td><p>A list of nodes.</p></td>
  </tr>
  <tr>
    <td><strong>pageInfo</strong> (<a href="objects.md#pageinfo">PageInfo!</a>)</td> 
    <td><p>Information to aid in pagination.</p></td>
  </tr>
</table>

---

### BookEdge

<p>An edge in a connection.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>cursor</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td><p>A cursor for use in pagination.</p></td>
  </tr>
  <tr>
    <td><strong>node</strong> (<a href="objects.md#book">Book</a>)</td> 
    <td><p>The item at the end of the edge.</p></td>
  </tr>
</table>

---

### PageInfo

<p>Information about pagination in a connection.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>endCursor</strong> (<a href="scalars.md#string">String</a>)</td> 
    <td><p>When paginating forwards, the cursor to continue.</p></td>
  </tr>
  <tr>
    <td><strong>hasNextPage</strong> (<a href="scalars.md#boolean">Boolean!</a>)</td> 
    <td><p>When paginating forwards, are there more items?</p></td>
  </tr>
  <tr>
    <td><strong>hasPreviousPage</strong> (<a href="scalars.md#boolean">Boolean!</a>)</td> 
    <td><p>When paginating backwards, are there more items?</p></td>
  </tr>
  <tr>
    <td><strong>startCursor</strong> (<a href="scalars.md#string">String</a>)</td> 
    <td><p>When paginating backwards, the cursor to continue.</p></td>
  </tr>
</table>

---

### Portfolio

  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>id</strong> (<a href="scalars.md#int">Int!</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>name</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>url</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td></td>
  </tr>
</table>

---

### PortfolioConnection

<p>The connection type for Portfolio.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>edges</strong> (<a href="objects.md#portfolioedge">[PortfolioEdge]</a>)</td> 
    <td><p>A list of edges.</p></td>
  </tr>
  <tr>
    <td><strong>nodes</strong> (<a href="objects.md#portfolio">[Portfolio]</a>)</td> 
    <td><p>A list of nodes.</p></td>
  </tr>
  <tr>
    <td><strong>pageInfo</strong> (<a href="objects.md#pageinfo">PageInfo!</a>)</td> 
    <td><p>Information to aid in pagination.</p></td>
  </tr>
</table>

---

### PortfolioEdge

<p>An edge in a connection.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>cursor</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td><p>A cursor for use in pagination.</p></td>
  </tr>
  <tr>
    <td><strong>node</strong> (<a href="objects.md#portfolio">Portfolio</a>)</td> 
    <td><p>The item at the end of the edge.</p></td>
  </tr>
</table>

---

### Profile

  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>address</strong> (<a href="scalars.md#string">String</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>id</strong> (<a href="scalars.md#int">Int!</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>skills</strong> (<a href="objects.md#skillconnection">SkillConnection!</a>)</td> 
    <td>
      <p></p>
      <table>
        <tr>
          <th><strong>Arguments</strong></th>
        </tr>
        <tr>
          <td>
            <p>after (<a href="scalars.md#string">String</a>)</p>
            <p><p>Returns the elements in the list that come after the specified cursor.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>before (<a href="scalars.md#string">String</a>)</p>
            <p><p>Returns the elements in the list that come before the specified cursor.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>first (<a href="scalars.md#int">Int</a>)</p>
            <p><p>Returns the first <em>n</em> elements from the list.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>last (<a href="scalars.md#int">Int</a>)</p>
            <p><p>Returns the last <em>n</em> elements from the list.</p></p>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

---

### Skill

  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>id</strong> (<a href="scalars.md#int">Int!</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>name</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td></td>
  </tr>
</table>

---

### SkillConnection

<p>The connection type for Skill.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>edges</strong> (<a href="objects.md#skilledge">[SkillEdge]</a>)</td> 
    <td><p>A list of edges.</p></td>
  </tr>
  <tr>
    <td><strong>nodes</strong> (<a href="objects.md#skill">[Skill]</a>)</td> 
    <td><p>A list of nodes.</p></td>
  </tr>
  <tr>
    <td><strong>pageInfo</strong> (<a href="objects.md#pageinfo">PageInfo!</a>)</td> 
    <td><p>Information to aid in pagination.</p></td>
  </tr>
</table>

---

### SkillEdge

<p>An edge in a connection.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>cursor</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td><p>A cursor for use in pagination.</p></td>
  </tr>
  <tr>
    <td><strong>node</strong> (<a href="objects.md#skill">Skill</a>)</td> 
    <td><p>The item at the end of the edge.</p></td>
  </tr>
</table>

---

### User

  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>books</strong> (<a href="objects.md#bookconnection">BookConnection!</a>)</td> 
    <td>
      <p></p>
      <table>
        <tr>
          <th><strong>Arguments</strong></th>
        </tr>
        <tr>
          <td>
            <p>after (<a href="scalars.md#string">String</a>)</p>
            <p><p>Returns the elements in the list that come after the specified cursor.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>before (<a href="scalars.md#string">String</a>)</p>
            <p><p>Returns the elements in the list that come before the specified cursor.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>first (<a href="scalars.md#int">Int</a>)</p>
            <p><p>Returns the first <em>n</em> elements from the list.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>last (<a href="scalars.md#int">Int</a>)</p>
            <p><p>Returns the last <em>n</em> elements from the list.</p></p>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td><strong>email</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>id</strong> (<a href="scalars.md#int">Int!</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>name</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td></td>
  </tr>
  <tr>
    <td><strong>portfolios</strong> (<a href="objects.md#portfolioconnection">PortfolioConnection!</a>)</td> 
    <td>
      <p></p>
      <table>
        <tr>
          <th><strong>Arguments</strong></th>
        </tr>
        <tr>
          <td>
            <p>after (<a href="scalars.md#string">String</a>)</p>
            <p><p>Returns the elements in the list that come after the specified cursor.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>before (<a href="scalars.md#string">String</a>)</p>
            <p><p>Returns the elements in the list that come before the specified cursor.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>first (<a href="scalars.md#int">Int</a>)</p>
            <p><p>Returns the first <em>n</em> elements from the list.</p></p>
          </td>
        </tr>
        <tr>
          <td>
            <p>last (<a href="scalars.md#int">Int</a>)</p>
            <p><p>Returns the last <em>n</em> elements from the list.</p></p>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td><strong>profile</strong> (<a href="objects.md#profile">Profile</a>)</td> 
    <td></td>
  </tr>
</table>

---

### UserConnection

<p>The connection type for User.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>edges</strong> (<a href="objects.md#useredge">[UserEdge]</a>)</td> 
    <td><p>A list of edges.</p></td>
  </tr>
  <tr>
    <td><strong>nodes</strong> (<a href="objects.md#user">[User]</a>)</td> 
    <td><p>A list of nodes.</p></td>
  </tr>
  <tr>
    <td><strong>pageInfo</strong> (<a href="objects.md#pageinfo">PageInfo!</a>)</td> 
    <td><p>Information to aid in pagination.</p></td>
  </tr>
</table>

---

### UserEdge

<p>An edge in a connection.</p>  

#### Fields

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><strong>cursor</strong> (<a href="scalars.md#string">String!</a>)</td> 
    <td><p>A cursor for use in pagination.</p></td>
  </tr>
  <tr>
    <td><strong>node</strong> (<a href="objects.md#user">User</a>)</td> 
    <td><p>The item at the end of the edge.</p></td>
  </tr>
</table>

---