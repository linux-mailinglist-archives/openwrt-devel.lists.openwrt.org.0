Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AF81B7C2D
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 18:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4xHlB31TYk2ur4NpN23png1rv7V51s9DdKM+iVWGx1A=; b=DjoyhRkPDI+PauIz4SmiQxdCh
	e4u2+MNTWKUokKMH8toJE/TJptYeEwnalGM/WKa7ONNlaQQIm8/yyKNZbOw1y8un3gyqVItYRj6Ry
	hfO4q1CeJFE5BKpqLhw6BVfxn2xecBlmRlcqIpDGuHdlrCpNApCX9QhoKKW6FlTZE+TJFNBH2/d7h
	FZfwTbzwRICXM21+feQjd90TvDLdmKaXdG+Qqn5Cww2mWXfdeWd0+gGus+BHzsQvbIZ6CA5qxEKzp
	R+cTwNaDEhxCR2TAECBJfveGQyYRTGE5S2qyfBdENW8+HNRJ+8aTp4nyT4KuvbxTKowXGeGdnvFPJ
	IHq3JsgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1Wy-0004XR-O2; Fri, 24 Apr 2020 16:50:24 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1Wk-0004GM-6G
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 16:50:11 +0000
Received: by mail-lf1-x135.google.com with SMTP id j14so8240743lfg.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 09:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HxetJNSYzzVwsNzakfXDCDUh8Df40gNVqA25uz+IL0s=;
 b=v8c41tWoqjM/k81TWatpLec/XOuwmgptD/wOQd1wa6vsXDMKLKg/s0PjtX/z20pMBK
 hvBC6rqS4lUb06n84vS2fD/SvycniKONelZJrbspE0wARPthw4k1xo7kgW6d77y8l/ug
 KQQBgzCAH/FeftkNCMYRByJN6waQBvrxvn9Q+XTl8RuhiKLXOqqM6lt/wcCZhnx+dA+Q
 L4ypGRO0JPkXolWOe5Mhhv8BmlEez0UryC8aGlruXRAWYrG5FHUJeIiGKhRu8KWVkZEG
 wKBC88fA4e4qCv2c8jUcpvkvm2YT+YUcViT9+G7gvjc0x+kO2Qn+83yCw/khnRlVqg34
 1pWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HxetJNSYzzVwsNzakfXDCDUh8Df40gNVqA25uz+IL0s=;
 b=LIaZmiopcFUNelGsbNo2h2UmjkeiQh9ADcTAJ2c1jTiQZ21O4152g1O8Q9OAKD2egY
 hk4aFszIJDA2ItcRl732nlLco4sSTVqUSXJGiFO8fJPtjPoE2RgiuKI3fKZa0AyWeS9l
 tquvnBNBlm4jtyALQoZAFwi/eWMmVMFctz3xmMP0aakV3f+FnY4OAvqve5tCx6OCwGh5
 mqwpzO3XdfRsDf/eRJ3W6Ihzq0S5pTFamQsnl0SnmWJdHgcX/qNbHia6HsVvGrX4RGJB
 Z/0jGepn5wdkARdI0RPJErnNRLQN4RCyAbun+zNUXVXaX2PuvczrEvCPd6RFPcIX2HE2
 /L/A==
X-Gm-Message-State: AGi0PuZo5z+l5lyZ3R8mCD7OpTmh7+cRc/UCHCCSn+2YODM2fOQH1KIM
 5lTd653Pkh6aSkHwk42TXvVaDCXZLyJ3Fj+szXfJoxbZLI71pA==
X-Google-Smtp-Source: APiQypJJb4FXm2CC8d7qS6sdPFDP7snGDLwbg9OdubSItyoi3Iwm6qp1c252sXlRr3fs6yRwKZN5Xeyx6UGGeH39+u8=
X-Received: by 2002:ac2:4573:: with SMTP id k19mr6686994lfm.144.1587747007872; 
 Fri, 24 Apr 2020 09:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6AxtOXdE7iq68FaHutZ_FY6tch4fi8EtH38+YX8FmcKQ@mail.gmail.com>
 <851a7d16-2b15-e314-089e-6c276215f34d@wwsnet.net>
 <CAJQUmm4xs+bhr_fYYEArFEDmRcZo7QDKz=VE4RHuKOw09sNxZQ@mail.gmail.com>
In-Reply-To: <CAJQUmm4xs+bhr_fYYEArFEDmRcZo7QDKz=VE4RHuKOw09sNxZQ@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Fri, 24 Apr 2020 11:49:56 -0500
Message-ID: <CAJQUmm4nijEervCgDNbbCHMHEENG7Y-4T9Qyi=WYjzXuxTDDLg@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_095010_284557_AECD1564 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
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
Content-Type: multipart/mixed; boundary="===============0144811719871474548=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0144811719871474548==
Content-Type: multipart/alternative; boundary="00000000000065d9e305a40c28b9"

--00000000000065d9e305a40c28b9
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 23, 2020 at 6:38 PM Michael Jones <mike@meshplusplus.com> wrote:

>
> On Thu, Apr 23, 2020 at 3:50 PM Jo-Philipp Wich <jo@mein.io> wrote:
>
>> Hi,
>>
>> > [...]
>> > What I want to do is return a JSON string with this representation:
>> > [
>> >     { "interface" : "lan", "uptime" : 11111 },
>> >     ...
>> > ]
>> >
>> > E.g., I want to filter the json not down to a single value, but to a
>> > collection of key-value pairs by excluding items that don't match.
>>
>> that is not directly possible. You can use the shell export mode together
>> with
>> the field separator to build a list of tuples safe for processing, printf
>> the
>> intermediate fields and finally use the array mode to build a proper list:
>>
>> -- 8< --
>> eval $(ubus call network.interface dump | \
>>  jsonfilter -F ': ' -e
>> 'tuples=@.interface[@.up=true]["interface","uptime"]')
>>
>> for tuple in $tuples; do
>>  printf '{ "%s": %d }\n' "${tuple%:*}" "${tuple#*:}"
>> done | jsonfilter -a -e @
>> -- >8 --
>>
>> Will result in something like the output below:
>>
>> [ { "lan": 4409874 }, { "loopback": 4409873 }, { "modem": 803939 }, {
>> "wan":
>> 4040845 }, { "wan6": 2681477 } ]
>>
>>
>> Returning subsets of objects is not directly supported unfortunately but
>> I'll
>> think about how to add something like this if I find the time.
>>
>> ~ Jo
>
>

As a follow on to this, in order to extract two values, one would need to
do something like this

eval $(ubus call network.interface dump | jsonfilter -F ':: ' -e
'tuples=@.interface[@.up=true]["interface","uptime","proto"]')

for tuple in $tuples
do
    middle=$(expr $tuple : '.*:\(.*\):.*')
    printf '{ "interface" : "%s", "uptime" : %d, "proto" : "%s"}\n'
"${tuple%%:*}" "$middle" "${tuple##*:}"
done | jsonfilter -a -e @

Notably this also breaks if the extracted text of each value contains
strings

--00000000000065d9e305a40c28b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 6:38 PM Michael J=
ones &lt;<a href=3D"mailto:mike@meshplusplus.com">mike@meshplusplus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 3:50 PM Jo-Philipp Wi=
ch &lt;<a href=3D"mailto:jo@mein.io" target=3D"_blank">jo@mein.io</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
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
~ Jo</blockquote></div></div></blockquote><div><br></div><div><br></div><di=
v>As a follow on to this, in order to extract two values, one would need to=
 do something like this</div><div><br></div>eval $(ubus call network.interf=
ace dump | jsonfilter -F &#39;:: &#39; -e &#39;tuples=3D@.interface[@.up=3D=
true][&quot;interface&quot;,&quot;uptime&quot;,&quot;proto&quot;]&#39;)<br>=
<br>for tuple in $tuples<br>do<br>=C2=A0 =C2=A0 middle=3D$(expr $tuple : &#=
39;.*:\(.*\):.*&#39;)<br>=C2=A0 =C2=A0 printf &#39;{ &quot;interface&quot; =
: &quot;%s&quot;, &quot;uptime&quot; : %d, &quot;proto&quot; : &quot;%s&quo=
t;}\n&#39; &quot;${tuple%%:*}&quot; &quot;$middle&quot; &quot;${tuple##*:}&=
quot;<br><div>done | jsonfilter -a -e @=C2=A0</div><div><br></div><div>Nota=
bly this also breaks if the extracted text of each value contains strings</=
div></div></div>

--00000000000065d9e305a40c28b9--


--===============0144811719871474548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0144811719871474548==--

