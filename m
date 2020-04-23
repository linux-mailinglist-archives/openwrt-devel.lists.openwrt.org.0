Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A71B1B6A07
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 01:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RVgarXqi+UgWAffQo20voVSTn7xMcY69Lve/DObVC2k=; b=YeINjJKwmaIYJdFBLM8N2kbei
	l8owdNY8JkJ6TvXsKsyOHmjBOgTj0ypnINJS3LdjQD6Wo5wZyAPVxBJMPN7M/u/4P+UyHfz1HhmGT
	858bsLpRWi5DdyROnZnJXIYQzSWDTS3RU3yZoBt38TV6ecXEy37qqdqR6ZjyK8M71CcbeFEZ79u3Q
	vOyq57aOwc9UbXBAuaf1n6IY29ZIwPWwxqyRIanS9UORv/HBeDicCyqrqJfhtNmkloak/mnqal+Uj
	Kie+kQbXR+Q615YJDFU8VDorcwWmpKP/Vetp33vmUCFz0q6EHMTVC0qHQMvgApHrjyrKePGdl73M1
	+WEUFtz0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRlQv-0006Fy-4w; Thu, 23 Apr 2020 23:39:05 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRlQp-0006Eq-JP
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 23:39:01 +0000
Received: by mail-lj1-x230.google.com with SMTP id f18so8035430lja.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 Apr 2020 16:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0FaDJKsCHx9g0NezLbo8jLjHE0onk7fTz9+xjcMT6tU=;
 b=HoYd0DqHCNNU17mmBRsWosBR4awjHpyii6CLpKf6LxOHNsszvY/hs8dNENG7KKnzwV
 yx/st1fEaBi66oLv4qtZCwbv/Zyn+IjbJ7j49RTT0TGb+GwzgfCUt5LQBisUbOCQ6SUY
 TPXs1LFfzML1Y79iwWmA327mYuImM/NmScCZLQgIJe/LJQ0AqezfDfe/GUoZ7gaNCxzt
 DgFhprz7RIjTrHo30Tm9c8n+mCEwbQat5ml6aj7qO2FacC6N7yQzF7iTD3EH5hw42tIH
 FJlmR+X7wbVPXM60EMu/sFgmQHGwQ30B+D2OikzB5mXN5jAN1digJuho208gZG8XOrb2
 A5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0FaDJKsCHx9g0NezLbo8jLjHE0onk7fTz9+xjcMT6tU=;
 b=F12c7jq7kRMZwgUV1kjXvyuSy8LdipfLwOcnB9pxUl+cHAsBsPjrchadCeraaZHDF0
 7Y0aBqUYkOhpQ9O5pfk6VRcjhMV8dQikGW0lvLsEzslTMmVM4kZuDVHxMXr78ubfEF8F
 HmgcrAR/sIsODXE/jiVMIpZYwUjtF/pWB92fEpZGjX7ljpwMJJ4my3zdLvaWeMxPA/Xb
 7SUb1VWEAoN9lHYiFB3qfmch/9AFJ+j8WjoImSzysoErSeipY1lmTXbXIEXROFxvZ7JC
 KmKNEJVJzJer9GNtMzYGuA0phfeyMVGZuEfu0mZzl2cfk3uh33rX6On6C/Ueu2ki7sEi
 Bk1g==
X-Gm-Message-State: AGi0PuYyuRH3zvNdHTcBIfjbEfDv92DeksgMxH9+mgiVvZkaV1OjgQi7
 SW1YDBVx5l6td6qKstPeIxXMDVmOlvZRoJ3QMB7NJ6py+8M=
X-Google-Smtp-Source: APiQypIQ5YccdYw0vkhk2G/c5uu6cQ376KnZHAjlXdAPhCTj0hcbjpkuOBltfEO1ygvFtMkc9Muud7+hqnYXOoWUcoo=
X-Received: by 2002:a2e:a37b:: with SMTP id i27mr3758362ljn.36.1587685136296; 
 Thu, 23 Apr 2020 16:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6AxtOXdE7iq68FaHutZ_FY6tch4fi8EtH38+YX8FmcKQ@mail.gmail.com>
 <851a7d16-2b15-e314-089e-6c276215f34d@wwsnet.net>
In-Reply-To: <851a7d16-2b15-e314-089e-6c276215f34d@wwsnet.net>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 23 Apr 2020 18:38:45 -0500
Message-ID: <CAJQUmm4xs+bhr_fYYEArFEDmRcZo7QDKz=VE4RHuKOw09sNxZQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_163859_707055_FAFA624C 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Jsonfilter, return partial subobject?
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============0919325471422076296=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0919325471422076296==
Content-Type: multipart/alternative; boundary="000000000000907f9305a3fdc00c"

--000000000000907f9305a3fdc00c
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 23, 2020 at 3:50 PM Jo-Philipp Wich <jo@mein.io> wrote:

> Hi,
>
> > [...]
> > What I want to do is return a JSON string with this representation:
> > [
> >     { "interface" : "lan", "uptime" : 11111 },
> >     ...
> > ]
> >
> > E.g., I want to filter the json not down to a single value, but to a
> > collection of key-value pairs by excluding items that don't match.
>
> that is not directly possible. You can use the shell export mode together
> with
> the field separator to build a list of tuples safe for processing, printf
> the
> intermediate fields and finally use the array mode to build a proper list:
>
> -- 8< --
> eval $(ubus call network.interface dump | \
>  jsonfilter -F ': ' -e
> 'tuples=@.interface[@.up=true]["interface","uptime"]')
>
> for tuple in $tuples; do
>  printf '{ "%s": %d }\n' "${tuple%:*}" "${tuple#*:}"
> done | jsonfilter -a -e @
> -- >8 --
>
> Will result in something like the output below:
>
> [ { "lan": 4409874 }, { "loopback": 4409873 }, { "modem": 803939 }, {
> "wan":
> 4040845 }, { "wan6": 2681477 } ]
>
>
> Returning subsets of objects is not directly supported unfortunately but
> I'll
> think about how to add something like this if I find the time.
>
> ~ Jo
>
>
Thank you very much for the suggestion on using the -F flag, and the printf
command.

This is less verbose than the jshn.sh script that I wrote in my followup
email, so it will probably be what I use for now.

Please let me know if I can help with adding more capabilities to the
jsonfilter program.

--000000000000907f9305a3fdc00c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 3:50 PM Jo-Philip=
p Wich &lt;<a href=3D"mailto:jo@mein.io">jo@mein.io</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
&gt; [...]<br>
&gt; What I want to do is return a JSON string with this representation:<br=
>
&gt; [<br>
&gt; =C2=A0 =C2=A0 { &quot;interface&quot; : &quot;lan&quot;, &quot;uptime&=
quot; : 11111 },<br>
&gt; =C2=A0 =C2=A0 ...<br>
&gt; ]<br>
&gt; <br>
&gt; E.g., I want to filter the json not down to a single value, but to a<b=
r>
&gt; collection of key-value pairs by excluding items that don&#39;t match.=
<br>
<br>
that is not directly possible. You can use the shell export mode together w=
ith<br>
the field separator to build a list of tuples safe for processing, printf t=
he<br>
intermediate fields and finally use the array mode to build a proper list:<=
br>
<br>
-- 8&lt; --<br>
eval $(ubus call network.interface dump | \<br>
=C2=A0jsonfilter -F &#39;: &#39; -e &#39;tuples=3D@.interface[@.up=3Dtrue][=
&quot;interface&quot;,&quot;uptime&quot;]&#39;)<br>
<br>
for tuple in $tuples; do<br>
=C2=A0printf &#39;{ &quot;%s&quot;: %d }\n&#39; &quot;${tuple%:*}&quot; &qu=
ot;${tuple#*:}&quot;<br>
done | jsonfilter -a -e @<br>
-- &gt;8 --<br>
<br>
Will result in something like the output below:<br>
<br>
[ { &quot;lan&quot;: 4409874 }, { &quot;loopback&quot;: 4409873 }, { &quot;=
modem&quot;: 803939 }, { &quot;wan&quot;:<br>
4040845 }, { &quot;wan6&quot;: 2681477 } ]<br>
<br>
<br>
Returning subsets of objects is not directly supported unfortunately but I&=
#39;ll<br>
think about how to add something like this if I find the time.<br>
<br>
~ Jo<br><br></blockquote><div><br></div><div>Thank you very much for the su=
ggestion on using the -F flag, and the printf command.<br><br>This is less =
verbose than the jshn.sh script that I wrote in my followup email, so it wi=
ll probably be what I use for now.<br><br>Please let me know if I can help =
with adding more capabilities to the jsonfilter program.=C2=A0</div></div><=
/div>

--000000000000907f9305a3fdc00c--


--===============0919325471422076296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0919325471422076296==--

