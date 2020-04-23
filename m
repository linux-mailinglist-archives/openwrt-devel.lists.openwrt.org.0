Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFEF1B62C9
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 19:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UP6NUBziJdRfbbnkAEjGMpF8iVKp+jJuUjSRbwD5lNM=; b=oVy
	LTYqnmGAFdiTUwUcyh7CO5eXu2ik+cL/yrg9N2t+k66W0fOY7tZDwwwPLWHolJCWPyU8KP43nmZEs
	iMG2aGRtSV5A9bBWVCBKQXNgrjzzHtFXZxR7W6LvyrkPQaILmdj4KGVJyaLs+c8Cg2TK0DV6UfzpL
	6JiMqF/PkARVXNrf1Nk8YoNx/xC3EeZYUmhdSw9RsJixUdrYY3QIFgm+TSMaCQGps9OUqAjnBEIaG
	MVncPzzadW9bL71mydFb0Y2RuW4Dl3D8KaZlfi7X5pk4dHiwmIhiuucBCwRrTTJ6pHiUOcUR4B9Fx
	X9PXSorcXqBjR3ZIQRkwx8uFEALvsGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRg53-0004AJ-OC; Thu, 23 Apr 2020 17:56:09 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRg4u-00049e-UF
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 17:56:02 +0000
Received: by mail-lf1-x131.google.com with SMTP id f8so5486053lfe.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 Apr 2020 10:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=AMUagbtph9jsF2Kpmtm7CdcH/m2RXOjLhkJffod4DlQ=;
 b=x9P9PdMcwQ1aaUqjr6m/5emcVmVYf+z6b4kQUEBVO6Ou0SsuaXw6ZP61pTghZDAmRn
 dXFTLvmw8gdgwqcm3EQswweEnDZBrYSDwVdTZ5QPn808iJX1hIIbvdJv0TmO+ohueQzR
 iQ0uYI57spAlOCf8dAP/ydaqW5uc8FbwI5dY0Qsooz+X7MtL/aj7one633GIWV1a+Atr
 yVZNibGqPaZ0gW6SOC6RO5j0WlyzG/EqS+jc17UFrBaP3ZkCP1HquhQBAvZdE1t7h24B
 B9rnIQ96d+ENhVFRCNl0dLVq6rMMhtUrwsJIrPGUyNf2zk2lTiXAiEn+PvWaKXuKfThM
 6DQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AMUagbtph9jsF2Kpmtm7CdcH/m2RXOjLhkJffod4DlQ=;
 b=llWu/o+sAYD/EzzurvVxSGnJAqHLBPABFeGogS08ikTSvk8h+EkM2ki7Nu/q/CPMQL
 6OnhKN4z0c0NGFGVq1if0A8WsGQ/po9R8uS670sPGoC9iV6h+a0kmiboSk3EKcIzH/vF
 cNjFJvv/H85J15S37mcgVAoFxiTXj0Zhd3Ktqz645fJqxz1cu3WuOTyKzfsoXOLoq5us
 vTXXB8jgbs9T49ZBqbDXv/g5MKkqYrcvEqk5cCF2sHfbctQ5Y4Ag/aMYAqRrWGOKTBU/
 oys5amxjmQX3vEk4eDLF5B6UQ1xTzZXcPVKRtH1xdM0ykPeOKYCm9nWsI8VvLYhIoF/w
 Huiw==
X-Gm-Message-State: AGi0PuZtYWCr58RJrxkJ0IA4CeC1sPi6QsRQvSqkNVc7Aygd8nR5TvTn
 d4/TpIwZt+i/LLQl5WIsTzQTm7MLgqSsuLRCWovbBOu1Huo9jQ==
X-Google-Smtp-Source: APiQypItw4nbRX/kWb4zLZ1gL71hED0hL7LuFpnY84QquQFHFD5Lp47Ym7dn9pg+YjNCsBZbri7LV6X2Ov0ADjm07fY=
X-Received: by 2002:ac2:4c23:: with SMTP id u3mr2974303lfq.148.1587664556675; 
 Thu, 23 Apr 2020 10:55:56 -0700 (PDT)
MIME-Version: 1.0
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 23 Apr 2020 12:55:46 -0500
Message-ID: <CAJQUmm6AxtOXdE7iq68FaHutZ_FY6tch4fi8EtH38+YX8FmcKQ@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_105601_027180_521D73A6 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Jsonfilter, return partial subobject?
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
Content-Type: multipart/mixed; boundary="===============7842481136826340930=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7842481136826340930==
Content-Type: multipart/alternative; boundary="000000000000ec6e6805a3f8f556"

--000000000000ec6e6805a3f8f556
Content-Type: text/plain; charset="UTF-8"

I'm trying to work with the jsonfilter program included in the jsonpath
project from Jo-Philipp (https://git.openwrt.org/?p=project/jsonpath.gi
<https://git.openwrt.org/?p=project/jsonpath.git;a=summary>t)

Perhaps this is a failure on my part to understand the documentation
provided by this referenced webpage: http://goessner.net/articles/JsonPath/

I'm trying to filter out parts of a json string while still retaining some
structured identifying information.

For example, lets say, hypothetically, I had some JSON string containing an
array of objects, and I want only two key / value pairs to be returned.

Let's use the result of "ubus call network.interface dump" as the example:

This shell script
> ubus call network.interface dump | jsonfilter -e '@.interface' |
jsonfilter -e '@[@.up=true].interface'

Will return the following, on my OpenWRT system:
lan
loopback
wan
wan6
wwan

What I want to do is return a JSON string with this representation:
[
    { "interface" : "lan", "uptime" : 11111 },
    ...
]

E.g., I want to filter the json not down to a single value, but to a
collection of key-value pairs by excluding items that don't match.


So, based on the documentation that I've read, the expression might look
something like this:

> ubus call network.interface dump | jsonfilter -e '@.interface' |
jsonfilter -e '@[@.up=true].[interface, uptime]'

Of course, that syntax does not work, and so far the only use of the union
operator in jsonfilter is like this expression, which returns all
interfaces (e.g. either up OR not up)

> ubus call network.interface dump | jsonfilter -e '@.interface' |
jsonfilter -e '@[@.up=true, @.up=false].interface'

I can't find any examples (beyond one or two very simplistic examples) of
how to use the jsonfilter program on stackoverflow, nor the OpenWRT mailing
list, nor the OpenWRT Discourse

I'm quite reluctant to do multiple processing sweeps. E.g. the following
(probably syntax-error-full, and erroneous output) shell script is
extremely unattractive

json=`ubus call network.interface dump | jsonfilter -e '@.interface'`
echo '['
for itf in $(echo $json | jsonfilter -e '@[@.up=true].interface')
do
    echo "{ \"interface\" : \"$itf\" , \"uptime\" : $(echo $json |
jsonfilter -e "@[@.interface=$itf].uptime") }," # Oh look, an unconditional
trailing comma... that won't parse until JSON5...
done
echo ']'

Of course, the json string that I'm trying to manipulate is not coming from
"ubus call network.interface dump", it's from a third party program that
can't be modified, I'm only using the ubus JSON as an example to illustrate
the general concept of what I'm asking for.


Is this something that jsonfilter is capable of doing at all? Or am I
having a fundamental misunderstanding of the program's capabilities?

--000000000000ec6e6805a3f8f556
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m trying to work with the jsonfilter program include=
d in the jsonpath project from=C2=A0Jo-Philipp (<a href=3D"https://git.open=
wrt.org/?p=3Dproject/jsonpath.git;a=3Dsummary">https://git.openwrt.org/?p=
=3Dproject/jsonpath.gi</a>t)<div><div><br></div><div>Perhaps this is a fail=
ure on my part to understand the documentation provided by this referenced =
webpage:=C2=A0<a href=3D"http://goessner.net/articles/JsonPath/">http://goe=
ssner.net/articles/JsonPath/</a></div><div><br></div><div>I&#39;m trying to=
 filter out parts of a json string while still retaining some structured id=
entifying information.</div><div><br></div><div>For example, lets say, hypo=
thetically, I had some JSON string containing an array of objects, and I wa=
nt only two key / value pairs to be returned.</div><div><br></div><div>Let&=
#39;s use the result of &quot;ubus call network.interface dump&quot; as the=
 example:</div><div><br></div><div>This shell script</div><div>&gt; ubus ca=
ll network.interface dump | jsonfilter -e &#39;@.interface&#39; | jsonfilte=
r -e &#39;@[@.up=3Dtrue].interface&#39;<br></div><div><br></div><div>Will r=
eturn the following, on my OpenWRT system:</div><div>lan<br>loopback<br>wan=
<br>wan6<br>wwan<br></div></div><div><br></div><div>What I want to do is re=
turn a JSON string with this representation:</div><div>[</div><div>=C2=A0 =
=C2=A0 { &quot;interface&quot; : &quot;lan&quot;, &quot;uptime&quot; : 1111=
1 },</div><div>=C2=A0 =C2=A0 ...</div><div>]</div><div><br></div><div>E.g.,=
 I want to filter the json not down to a single value, but to a collection =
of key-value pairs by excluding items that don&#39;t match.</div><div><br><=
/div><div><br></div><div>So, based on the documentation that I&#39;ve read,=
 the expression might look something like this:</div><div><br></div><div>&g=
t; ubus call network.interface dump | jsonfilter -e &#39;@.interface&#39; |=
 jsonfilter -e &#39;@[@.up=3Dtrue].[interface, uptime]&#39;<br></div><div><=
br></div><div>Of course, that syntax does not work, and so far the only use=
 of the union operator in jsonfilter is like this expression, which returns=
 all interfaces=C2=A0(e.g. either up OR not up)</div><div><br></div><div>&g=
t; ubus call network.interface dump | jsonfilter -e &#39;@.interface&#39; |=
 jsonfilter -e &#39;@[@.up=3Dtrue, @.up=3Dfalse].interface&#39;</div><div><=
br></div><div>I can&#39;t find any examples (beyond one or two very simplis=
tic examples) of how to use the jsonfilter program on stackoverflow, nor th=
e OpenWRT mailing list, nor the OpenWRT Discourse</div><div><br></div><div>=
I&#39;m quite reluctant to do multiple processing sweeps. E.g. the followin=
g (probably syntax-error-full, and erroneous output) shell script is extrem=
ely unattractive<br></div><div><br></div><div>json=3D`ubus call network.int=
erface dump | jsonfilter -e &#39;@.interface&#39;`</div><div>echo &#39;[&#3=
9;</div><div>for itf in $(echo $json  | jsonfilter -e &#39;@[@.up=3Dtrue].i=
nterface&#39;)<br></div><div>do</div><div>=C2=A0 =C2=A0 echo &quot;{ \&quot=
;interface\&quot; : \&quot;$itf\&quot; , \&quot;uptime\&quot; : $(echo $jso=
n  | jsonfilter -e &quot;@[@.interface=3D$itf].uptime&quot;) },&quot; # Oh =
look, an unconditional trailing comma... that won&#39;t parse until JSON5..=
.</div><div>done</div><div>echo &#39;]&#39;</div><div><br></div><div>Of cou=
rse, the json string that I&#39;m trying to manipulate is not coming from &=
quot;ubus call network.interface dump&quot;, it&#39;s from a third party pr=
ogram that can&#39;t be modified, I&#39;m only using the ubus JSON as an ex=
ample to illustrate the general concept of what I&#39;m asking for.</div><d=
iv><br></div><div><div><br></div><div>Is this something that jsonfilter is =
capable of doing at all? Or am I having a fundamental=C2=A0misunderstanding=
 of the program&#39;s capabilities?</div></div><div><br></div></div>

--000000000000ec6e6805a3f8f556--


--===============7842481136826340930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7842481136826340930==--

