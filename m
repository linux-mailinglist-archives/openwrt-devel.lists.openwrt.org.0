Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A35A18DFA
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 18:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=03XeB4IfebIr6HZjR8qiAdP/t3JgJpgKmEcth+JKHpA=; b=tQCNsL9bXZzsavXqVUnhJ2hn+
	gBvnoBHalKDN3jBvHtw2k4WrvsUPcKN117VnT8mk1iaGVgbdk/aduS1qxZTwFPhb6BoSSn6uD39Z4
	MUvXBmQO4Qmgr5aaGwJPjx+zFjdbtTPpb3TUHio92JxOgIVHu+mEtBBMb32/n2mLATzY9+YtgbuqE
	iPiNkG4yyNTZtXk17GuzwYfxJ90XBjrS8Z7axO4xlniejgpxjJXv9zFQtRG3z3+IWmal/C45IGh9V
	GVSZ5S5DPHe26nf+yF6FHdT9oBMj4i56Ij2A2oOpEeQTFfUlwXBsRQr7+cK4ewiw/IQW3ZE1evim0
	Lk/01+9YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOlrd-0002RX-0v; Thu, 09 May 2019 16:25:45 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOlrV-0002Qg-Lo
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 16:25:39 +0000
Received: from JKLETSKY-MBP15.lan (184-23-190-103.vpn.dynamic.sonic.net
 [184.23.190.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id E27B43D968;
 Thu,  9 May 2019 09:25:34 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
 <CAOX2RU4Ae_GRq+_P1RGt0=BgnodSfoT_uHkjZxTwsf5mPobLgg@mail.gmail.com>
 <5a135cb6-bb49-ee37-a4d4-85911fc9b667@allycomm.com>
 <20190509100439.GQ81826@meh.true.cz>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <f73cbf9f-19c6-0273-6d64-e538a3c64dac@allycomm.com>
Date: Thu, 9 May 2019 18:25:33 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509100439.GQ81826@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_092537_774173_0215B2D1 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] Build system puzzles: PCI_SUPPORT not being set
 for subtarget
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Robert Marko <robimarko@gmail.com>
Content-Type: multipart/mixed; boundary="===============1041758998398460933=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============1041758998398460933==
Content-Type: multipart/alternative;
 boundary="------------DF2E2D1F06746B4A580A06E4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DF2E2D1F06746B4A580A06E4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/9/19 12:04 PM, Petr Štetiar wrote:

> Jeff Kletsky <lede@allycomm.com> [2019-05-09 11:23:18]:
>
>> I reconfirmed that
>>
>>    openwrt/target/linux/ath79$ cp generic/config-default nand/config-default
>>    openwrt$ cat /dev/null > .config
>>    openwrt$ make menuconfig
>>
>> has the same behavior -- the nand target does not set PCI_SUPPORT
> it works here(tm):
>
>   CONFIG_TARGET_ath79=y
>   CONFIG_TARGET_ath79_nand=y
>   CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-ar300m-nand=y
>   CONFIG_ATH10K-CT_LEDS=y
>   CONFIG_DRIVER_11AC_SUPPORT=y
>   CONFIG_PACKAGE_kmod-ath10k-ct=y
>   CONFIG_PACKAGE_kmod-hwmon-core=y
>
> -- ynezz

What I'm seeing is that ath10k gets stripped out for nand,
but not for nor. I ran "virgin" tests with the scripts below,
with the same config-default in both generic/ and nand/.

Perhaps I am missing something or misunderstood, but below
is what I'm seeing with what I interpreted as .config seed above.

Both

   # CONFIG_PACKAGE_kmod-ath10k is not set
   CONFIG_PACKAGE_kmod-ath10k-ct=y

are missing for the nand subtarget.


I'm willing to track this down (as I've got an AR750S
running on NAND, including sysupgrade), but at least so far
I haven't been successful in getting output from
scripts/kconfig.pl to confirm that it is what is generating
the config from the various pieces at the generic-Linux, target,
and subtarget levels. Is there a different place I should
be looking?


Jeff



glinet_gl-ar300m-nor
--------------------

CONFIG_PACKAGE_kmod-ath10k-ct=y


=====

'target/linux/ath79/generic/config-default' -> 'target/linux/ath79/nand/config-default'
Collecting package info: done
configuration written to .config

*** End of the configuration.
*** Execute 'make' to start the build or try 'make help'.

# ath10k IPQ4019 Boarddata
# CONFIG_PACKAGE_ath10k-firmware-qca4019 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca4019-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca4019-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca6174 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct-htt is not set
# CONFIG_PACKAGE_kmod-ath10k is not set
CONFIG_PACKAGE_kmod-ath10k-ct=y



glinet_gl-ar300m-nand
---------------------

CONFIG_PACKAGE_kmod-ath10k-ct=y


=====

'target/linux/ath79/generic/config-default' -> 'target/linux/ath79/nand/config-default'
Collecting package info: done
configuration written to .config

*** End of the configuration.
*** Execute 'make' to start the build or try 'make help'.

# ath10k IPQ4019 Boarddata
# CONFIG_PACKAGE_ath10k-firmware-qca4019 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca4019-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca6174 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct is not set



Scripts to replicate:

test-nor.sh
-----------

#!/bin/bash

mkdir -p ~/devel/ 2>/dev/null

cd ~/devel/

git clone https://git.openwrt.org/openwrt/openwrt.git openwrt-nor-test
cd openwrt-nor-test
git checkout master
./scripts/feeds update -a
./scripts/feeds install -a
cat > .config <<EOF
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_generic=y
CONFIG_TARGET_ath79_generic_DEVICE_glinet_gl-ar300m-nor=y
CONFIG_ATH10K-CT_LEDS=y
CONFIG_DRIVER_11AC_SUPPORT=y
CONFIG_PACKAGE_kmod-ath10k-ct=y
CONFIG_PACKAGE_kmod-hwmon-core=y
EOF
fgrep ath10k .config
printf '\n\n=====\n\n'
cp -vp target/linux/ath79/generic/config-default target/linux/ath79/nand/
make menuconfig # and exit with save
fgrep ath10k .config



test-nand.sh
------------

#!/bin/bash

mkdir -p ~/devel/ 2>/dev/null

cd ~/devel/

git clone https://git.openwrt.org/openwrt/openwrt.git openwrt-nand-test
cd openwrt-nand-test
git checkout master
./scripts/feeds update -a
./scripts/feeds install -a
cat > .config <<EOF
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_nand=y
CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-ar300m-nand=y
CONFIG_ATH10K-CT_LEDS=y
CONFIG_DRIVER_11AC_SUPPORT=y
CONFIG_PACKAGE_kmod-ath10k-ct=y
CONFIG_PACKAGE_kmod-hwmon-core=y
EOF
fgrep ath10k .config
printf '\n\n=====\n\n'
cp -vp target/linux/ath79/generic/config-default target/linux/ath79/nand/
make menuconfig # and exit with save
fgrep ath10k .config



$ diff test-nor.sh test-nand.sh
7,8c7,8
< git clone https://git.openwrt.org/openwrt/openwrt.git openwrt-nor-test
< cd openwrt-nor-test
---
> git clone https://git.openwrt.org/openwrt/openwrt.git openwrt-nand-test
> cd openwrt-nand-test
14,15c14,15
< CONFIG_TARGET_ath79_generic=y
< CONFIG_TARGET_ath79_generic_DEVICE_glinet_gl-ar300m-nor=y
---
> CONFIG_TARGET_ath79_nand=y
> CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-ar300m-nand=y




--------------DF2E2D1F06746B4A580A06E4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>On 5/9/19 12:04 PM, Petr Štetiar wrote:
</pre>
    <blockquote type="cite"
      cite="mid:20190509100439.GQ81826@meh.true.cz">
      <pre class="moz-quote-pre" wrap="">Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:lede@allycomm.com">&lt;lede@allycomm.com&gt;</a> [2019-05-09 11:23:18]:

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">I reconfirmed that

  openwrt/target/linux/ath79$ cp generic/config-default nand/config-default
  openwrt$ cat /dev/null &gt; .config
  openwrt$ make menuconfig

has the same behavior -- the nand target does not set PCI_SUPPORT
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
it works here(tm):

 CONFIG_TARGET_ath79=y
 CONFIG_TARGET_ath79_nand=y
 CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-ar300m-nand=y
 CONFIG_ATH10K-CT_LEDS=y
 CONFIG_DRIVER_11AC_SUPPORT=y
 CONFIG_PACKAGE_kmod-ath10k-ct=y
 CONFIG_PACKAGE_kmod-hwmon-core=y

-- ynezz
</pre>
    </blockquote>
    <pre>
What I'm seeing is that ath10k gets stripped out for nand, 
but not for nor. I ran "virgin" tests with the scripts below,
with the same config-default in both generic/ and nand/.

Perhaps I am missing something or misunderstood, but below 
is what I'm seeing with what I interpreted as .config seed above.

Both

  # CONFIG_PACKAGE_kmod-ath10k is not set
  CONFIG_PACKAGE_kmod-ath10k-ct=y 

are missing for the nand subtarget.


I'm willing to track this down (as I've got an AR750S 
running on NAND, including sysupgrade), but at least so far
I haven't been successful in getting output from 
scripts/kconfig.pl to confirm that it is what is generating
the config from the various pieces at the generic-Linux, target, 
and subtarget levels. Is there a different place I should 
be looking?


Jeff



glinet_gl-ar300m-nor
--------------------

CONFIG_PACKAGE_kmod-ath10k-ct=y


=====

'target/linux/ath79/generic/config-default' -&gt; 'target/linux/ath79/nand/config-default'
Collecting package info: done
configuration written to .config

*** End of the configuration.
*** Execute 'make' to start the build or try 'make help'.

# ath10k IPQ4019 Boarddata
# CONFIG_PACKAGE_ath10k-firmware-qca4019 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca4019-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca4019-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca6174 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984-ct-htt is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct-htt is not set
# CONFIG_PACKAGE_kmod-ath10k is not set
CONFIG_PACKAGE_kmod-ath10k-ct=y



glinet_gl-ar300m-nand
---------------------

CONFIG_PACKAGE_kmod-ath10k-ct=y


=====

'target/linux/ath79/generic/config-default' -&gt; 'target/linux/ath79/nand/config-default'
Collecting package info: done
configuration written to .config

*** End of the configuration.
*** Execute 'make' to start the build or try 'make help'.

# ath10k IPQ4019 Boarddata
# CONFIG_PACKAGE_ath10k-firmware-qca4019 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca4019-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca6174 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9887-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9888-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x is not set
# CONFIG_PACKAGE_ath10k-firmware-qca988x-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca9984-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0 is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct is not set



Scripts to replicate:

test-nor.sh
-----------

#!/bin/bash

mkdir -p ~/devel/ 2&gt;/dev/null

cd ~/devel/

git clone <a class="moz-txt-link-freetext" href="https://git.openwrt.org/openwrt/openwrt.git">https://git.openwrt.org/openwrt/openwrt.git</a> openwrt-nor-test
cd openwrt-nor-test
git checkout master
./scripts/feeds update -a
./scripts/feeds install -a
cat &gt; .config &lt;&lt;EOF
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_generic=y
CONFIG_TARGET_ath79_generic_DEVICE_glinet_gl-ar300m-nor=y
CONFIG_ATH10K-CT_LEDS=y
CONFIG_DRIVER_11AC_SUPPORT=y
CONFIG_PACKAGE_kmod-ath10k-ct=y
CONFIG_PACKAGE_kmod-hwmon-core=y
EOF
fgrep ath10k .config
printf '\n\n=====\n\n'
cp -vp target/linux/ath79/generic/config-default target/linux/ath79/nand/
make menuconfig # and exit with save
fgrep ath10k .config



test-nand.sh
------------

#!/bin/bash

mkdir -p ~/devel/ 2&gt;/dev/null

cd ~/devel/

git clone <a class="moz-txt-link-freetext" href="https://git.openwrt.org/openwrt/openwrt.git">https://git.openwrt.org/openwrt/openwrt.git</a> openwrt-nand-test
cd openwrt-nand-test
git checkout master
./scripts/feeds update -a
./scripts/feeds install -a
cat &gt; .config &lt;&lt;EOF
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_nand=y
CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-ar300m-nand=y
CONFIG_ATH10K-CT_LEDS=y
CONFIG_DRIVER_11AC_SUPPORT=y
CONFIG_PACKAGE_kmod-ath10k-ct=y
CONFIG_PACKAGE_kmod-hwmon-core=y
EOF
fgrep ath10k .config
printf '\n\n=====\n\n'
cp -vp target/linux/ath79/generic/config-default target/linux/ath79/nand/
make menuconfig # and exit with save
fgrep ath10k .config



$ diff test-nor.sh test-nand.sh
7,8c7,8
&lt; git clone <a class="moz-txt-link-freetext" href="https://git.openwrt.org/openwrt/openwrt.git">https://git.openwrt.org/openwrt/openwrt.git</a> openwrt-nor-test
&lt; cd openwrt-nor-test
---
&gt; git clone <a class="moz-txt-link-freetext" href="https://git.openwrt.org/openwrt/openwrt.git">https://git.openwrt.org/openwrt/openwrt.git</a> openwrt-nand-test
&gt; cd openwrt-nand-test
14,15c14,15
&lt; CONFIG_TARGET_ath79_generic=y
&lt; CONFIG_TARGET_ath79_generic_DEVICE_glinet_gl-ar300m-nor=y
---
&gt; CONFIG_TARGET_ath79_nand=y
&gt; CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-ar300m-nand=y



</pre>
  </body>
</html>

--------------DF2E2D1F06746B4A580A06E4--


--===============1041758998398460933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1041758998398460933==--

