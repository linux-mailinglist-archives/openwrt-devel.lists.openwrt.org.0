Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7BD1B6323
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 20:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8OCHrmBi0KbwrSXYNF5tUJ//xsxRZhL6Fp1HtylKuPc=; b=NZuqKF+8UEvKQZ/B88YeSZwaY
	pmujd6gqLv0g8WYa1pRlULGSk7YeSAwWUqsUfFRn6kAApTcHu2ZsYuUZczkY9/FeXtz0SGTiVvzDa
	ewdIk8PzG0vByraNfUxFzpjPFKR2Xxy6wvVgE33iQK9cQC1tp7pXGWsmpOr7ob9Kq4Evx8Qn8aTsT
	SMqWsbkVFkyTQtCuXPeHLMKFQjqvPk5Y72isCg/G7T04+oshSIw57oFSruORGp8vy67HPtagFXSXa
	9VlCOStvg6Rsc81sIyEiahRslimt8MFiCGrmYnUvfASxvVwHwNzY9T8LDg2lDdC3VMR+9bvcIu2SJ
	+C2STJb/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgRH-0004gi-Ue; Thu, 23 Apr 2020 18:19:07 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgR9-0004el-Oz
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 18:19:01 +0000
Received: by mail-lj1-x229.google.com with SMTP id f18so7199502lja.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 Apr 2020 11:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=tBrAPVCJICtWNFGqCrA1yVZJDQBcpFh6FI2pL7/IpE8=;
 b=P1ccdNjNeMtjJ6vznO4JUJ7EBEmta3noX0un7vd5rsSC0teHK6Vgd0Bxn5uKPJ6DQc
 O1CIAR8gzXHI5MB5emDKtoSGWhnvqxjPkCwtBJ/J0Kb5LnOgyOtwo7Pk/R30qBANKRU3
 urr18xihyD5MhH9lz7oA88SbcuExh2IIEZ4VWmcUB6q9rmEE4hwNl/8JDZHz05WmijlQ
 QNiaHH11dD60oglr+Ilk5H6cTJUC3EQ4eyw9b2I4ws+ofcsAf6taTcWXx1w/VXAVkafF
 ycp+vViozKrSj2aiutFsQTiq30Vezdyayfn22Rpm/dqXCUnFLk1NYBnAT67EO7cHmfkA
 xMyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=tBrAPVCJICtWNFGqCrA1yVZJDQBcpFh6FI2pL7/IpE8=;
 b=YqoMUOqzVDjuSfe0D7T7YMXbr8wdClCkWeu9nWqVVUPOvr0/FyqbRh5SSlESq/iOLA
 AJWV0HgPRShB6UZTrrEcdWaeX4DE4oEwt6UPDwTay6Ah4Ry/7HzvhixEwH4xlMNvJpYC
 1WOfFaKN0OO+K5VGxlVnP7b6I8qH7b0UeCk0OohSdyoAfL+JaZyZqxvf3Kr6QdE4MNrF
 ex2Sl6K9Q9Q5vzuNqIo+lYJMCU/ydjI3bhrLa3f1McsmrxiO8nIoVcniuUrlLJ4YeeBj
 YnQ71Jx1Xz1DYbkUcjicwIOn3G/wKSj722T9x/xq+hZpV6C2dfW7zrPbSBaZlZPP1y+6
 as5A==
X-Gm-Message-State: AGi0PuYq++ECZGp6VG/H2AJ9oraL7EwwP20IwKxdRypJOFx27d6CF5mn
 mWB1jFY/lufRAAi1fzFC665XXkwTcRww7txDdGschM3bPTvLJQ==
X-Google-Smtp-Source: APiQypIBpHPtnGpKpDi8m1KNIS2ixRw8K1KFrKrTZ0rlUFSGzwJek/NEVnnuiLHZLh+RoajGAuwxbeev/nJvEiTW8QE=
X-Received: by 2002:a2e:a37b:: with SMTP id i27mr2999134ljn.36.1587665936391; 
 Thu, 23 Apr 2020 11:18:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6AxtOXdE7iq68FaHutZ_FY6tch4fi8EtH38+YX8FmcKQ@mail.gmail.com>
In-Reply-To: <CAJQUmm6AxtOXdE7iq68FaHutZ_FY6tch4fi8EtH38+YX8FmcKQ@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 23 Apr 2020 13:18:45 -0500
Message-ID: <CAJQUmm7p851FJPfgsDZ-po0hCL-DwQopGkK=xPBE_i+HRSfG3A@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_111859_811897_4429FE3B 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
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
Content-Type: multipart/mixed; boundary="===============2971281599484543191=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2971281599484543191==
Content-Type: multipart/alternative; boundary="00000000000029325d05a3f94802"

--00000000000029325d05a3f94802
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 23, 2020 at 12:55 PM Michael Jones <mike@meshplusplus.com>
wrote:

> I'm quite reluctant to do multiple processing sweeps. E.g. the following
> (probably syntax-error-full, and erroneous output) shell script is
> extremely unattractive
>
> json=`ubus call network.interface dump | jsonfilter -e '@.interface'`
> echo '['
> for itf in $(echo $json | jsonfilter -e '@[@.up=true].interface')
> do
>     echo "{ \"interface\" : \"$itf\" , \"uptime\" : $(echo $json |
> jsonfilter -e "@[@.interface=$itf].uptime") }," # Oh look, an unconditional
> trailing comma... that won't parse until JSON5...
> done
> echo ']'
>
>
I suppose I should follow my original email up with an acknowledgement of
the jshn.sh library (and jshn program).

So I know that the script could be improved to work (and work correctly)
like this:

. /usr/share/libubox/jshn.sh
json_init
json_add_array arr

jsonoutput=`ubus call network.interface dump | jsonfilter -e '@.interface'`

for itf in $(echo $jsonoutput | jsonfilter -e '@[@.up=true].interface')
do
    json_add_object
    json_add_string interface $itf
    json_add_int    uptime    $(echo $jsonoutput | jsonfilter -e
"@[@.interface='$itf'].uptime")
    json_close_object
done

json_close_array
json_dump | jsonfilter -e '@.arr'


But I didn't want to muddle the question of "can I do what I want with
jsonfilter by itself", because I don't want to involve the use of a shell
script at all if I can avoid it!

--00000000000029325d05a3f94802
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 12:55 PM Michael =
Jones &lt;<a href=3D"mailto:mike@meshplusplus.com">mike@meshplusplus.com</a=
>&gt; wrote:</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>I&#39;m quite reluctant to do multiple processing sweeps. E.=
g. the following (probably syntax-error-full, and erroneous output) shell s=
cript is extremely unattractive<br></div><div><br></div><div>json=3D`ubus c=
all network.interface dump | jsonfilter -e &#39;@.interface&#39;`</div><div=
>echo &#39;[&#39;</div><div>for itf in $(echo $json  | jsonfilter -e &#39;@=
[@.up=3Dtrue].interface&#39;)<br></div><div>do</div><div>=C2=A0 =C2=A0 echo=
 &quot;{ \&quot;interface\&quot; : \&quot;$itf\&quot; , \&quot;uptime\&quot=
; : $(echo $json  | jsonfilter -e &quot;@[@.interface=3D$itf].uptime&quot;)=
 },&quot; # Oh look, an unconditional trailing comma... that won&#39;t pars=
e until JSON5...</div><div>done</div><div>echo &#39;]&#39;</div><div><br></=
div></div></blockquote><div><br></div><div>I suppose I should follow my ori=
ginal email up with an acknowledgement of the jshn.sh library (and jshn pro=
gram).</div><div><br></div><div>So I know that the script could be improved=
 to work (and work correctly) like this:</div><div><br></div>. /usr/share/l=
ibubox/jshn.sh<br>json_init<br>json_add_array arr<br><br>jsonoutput=3D`ubus=
 call network.interface dump | jsonfilter -e &#39;@.interface&#39;`<br><br>=
for itf in $(echo $jsonoutput | jsonfilter -e &#39;@[@.up=3Dtrue].interface=
&#39;)<br>do<br>=C2=A0 =C2=A0 json_add_object<br>=C2=A0 =C2=A0 json_add_str=
ing interface $itf<br>=C2=A0 =C2=A0 json_add_int =C2=A0 =C2=A0uptime =C2=A0=
 =C2=A0$(echo $jsonoutput | jsonfilter -e &quot;@[@.interface=3D&#39;$itf&#=
39;].uptime&quot;)<br>=C2=A0 =C2=A0 json_close_object<br>done<br><br>json_c=
lose_array<br><div>json_dump | jsonfilter -e &#39;@.arr&#39;</div><div><br>=
</div><div><br></div><div>But I didn&#39;t want to muddle the question of &=
quot;can I do what I want with jsonfilter by itself&quot;, because I don&#3=
9;t want to involve the use of a shell script at all if I can avoid it!</di=
v><div><br></div></div></div>

--00000000000029325d05a3f94802--


--===============2971281599484543191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2971281599484543191==--

