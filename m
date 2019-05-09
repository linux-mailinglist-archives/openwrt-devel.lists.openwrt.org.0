Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11D21934C
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 22:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hTveIf+lTLflQRKmbBuC8o4M+u/oyveoFa5I5tdR9Wo=; b=cDpnMTwmLqI81ZKIhNIZE/uxD
	FD+BDG0IFyoXp7URWwVtu+AVkyBaGEroGbzfJWUWMeIUcbZKtulNxVEbZRJAGHh7N/1x1bWitNh/U
	K3Y3lvEPcWH7ljNN6FQz9+0JSggTWTucwNUCcoB2W/wGB84+4LJ+UhZLKmI367GAC+NuuRBqmLLAc
	lLuAsVcLxAJCpgwIIkNonOPRf0JQqFZcIFio5VzGr7qoa+FI8EZzKdPiYvPUu0wg9L3kGANA4CwF9
	6ixGm/XKSA8mSjyrr4/G2oGhaShq1zr5LXIQJKpXETrZI3D5XZe+PXL0X67ohf+XZoL/ADPqX8NUf
	l/l0gpXyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpW3-00043C-PY; Thu, 09 May 2019 20:19:43 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpVv-00042K-Vx
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 20:19:37 +0000
Received: from JKLETSKY-MBP15.lan (184-23-190-103.vpn.dynamic.sonic.net
 [184.23.190.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 534743DFD1;
 Thu,  9 May 2019 13:19:01 -0700 (PDT)
To: Tomasz Maciej Nowak <tomek_n@o2.pl>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
References: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
 <CAOX2RU4Ae_GRq+_P1RGt0=BgnodSfoT_uHkjZxTwsf5mPobLgg@mail.gmail.com>
 <5a135cb6-bb49-ee37-a4d4-85911fc9b667@allycomm.com>
 <20190509100439.GQ81826@meh.true.cz>
 <f73cbf9f-19c6-0273-6d64-e538a3c64dac@allycomm.com>
 <458ea6ef-3031-d2c9-34b8-c06c80e57158@o2.pl>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <9b2cfdb4-5e4b-959e-132d-5bd38618bc56@allycomm.com>
Date: Thu, 9 May 2019 22:18:59 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <458ea6ef-3031-d2c9-34b8-c06c80e57158@o2.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_131936_033199_A6510EEA 
X-CRM114-Status: GOOD (  16.29  )
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
Content-Type: multipart/mixed; boundary="===============0442057060621815671=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0442057060621815671==
Content-Type: multipart/alternative;
 boundary="------------A7C77C0F6CCDF2E9C4A2CFD2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A7C77C0F6CCDF2E9C4A2CFD2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/9/19 7:28 PM, Tomasz Maciej Nowak wrote:

> Hi Jeff,
>
> W dniu 09.05.2019 o 18:25, Jeff Kletsky pisze:
>> On 5/9/19 12:04 PM, Petr Štetiar wrote:
>>
>>> Jeff Kletsky <lede@allycomm.com> [2019-05-09 11:23:18]:
>>>
>>>> I reconfirmed that
>>>>
>>>>     openwrt/target/linux/ath79$ cp generic/config-default nand/config-default
>>>>     openwrt$ cat /dev/null > .config
>>>>     openwrt$ make menuconfig
>>>>
>>>> has the same behavior -- the nand target does not set PCI_SUPPORT
>>> it works here(tm):
>>>
>>>    CONFIG_TARGET_ath79=y
>>>    CONFIG_TARGET_ath79_nand=y
>>>    CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-ar300m-nand=y
>>>    CONFIG_ATH10K-CT_LEDS=y
>>>    CONFIG_DRIVER_11AC_SUPPORT=y
>>>    CONFIG_PACKAGE_kmod-ath10k-ct=y
>>>    CONFIG_PACKAGE_kmod-hwmon-core=y
>>>
>>> -- ynezz
>> What I'm seeing is that ath10k gets stripped out for nand,
>> but not for nor. I ran "virgin" tests with the scripts below,
>> with the same config-default in both generic/ and nand/.
> I did run Your script for nand and this is the output (removed feeds to speed-up):
>
> [tomek@vaio-vpcz1 openwrt]$ ./test.sh
> Cloning into 'openwrt-nand-test'...
>
> [...]
>
> # CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct is not set
> # CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct-htt is not set
> # CONFIG_PACKAGE_kmod-ath10k is not set
> CONFIG_PACKAGE_kmod-ath10k-ct=y
>
> So it appears to work.
>
>> [...]
> When adding changes to target/subtarget config sometimes It's necessary to remove
> $(TOPDIR)/tmp to see changes, maybe that's the issue You were hitting?
>
> Regards
>
> -- 
> TMN
>
Removing $(TOPDIR)/tmp did resolve the issue, thanks!

Still somewhat puzzling, but enough to let me proceed here
and come back to see if I can improve the dependencies another day.

The time of all involved is greatly appreciated.


Jeff


--------------A7C77C0F6CCDF2E9C4A2CFD2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>
</pre>
    <div class="moz-cite-prefix">
      <pre>On 5/9/19 7:28 PM, Tomasz Maciej Nowak wrote:</pre>
    </div>
    <blockquote type="cite"
      cite="mid:458ea6ef-3031-d2c9-34b8-c06c80e57158@o2.pl">
      <pre class="moz-quote-pre" wrap="">Hi Jeff,

W dniu 09.05.2019 o 18:25, Jeff Kletsky pisze:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On 5/9/19 12:04 PM, Petr Štetiar wrote:

</pre>
        <blockquote type="cite">
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
          <pre class="moz-quote-pre" wrap="">it works here(tm):

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
        <pre class="moz-quote-pre" wrap="">
What I'm seeing is that ath10k gets stripped out for nand,
but not for nor. I ran "virgin" tests with the scripts below,
with the same config-default in both generic/ and nand/.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I did run Your script for nand and this is the output (removed feeds to speed-up):

[tomek@vaio-vpcz1 openwrt]$ ./test.sh
Cloning into 'openwrt-nand-test'...

[...]

# CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct is not set
# CONFIG_PACKAGE_ath10k-firmware-qca99x0-ct-htt is not set
# CONFIG_PACKAGE_kmod-ath10k is not set
CONFIG_PACKAGE_kmod-ath10k-ct=y

So it appears to work.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">[...]
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
When adding changes to target/subtarget config sometimes It's necessary to remove
$(TOPDIR)/tmp to see changes, maybe that's the issue You were hitting?

Regards

</pre>
      <pre>-- 
TMN

</pre>
    </blockquote>
    <pre>
</pre>
    <pre>Removing $(TOPDIR)/tmp did resolve the issue, thanks!

Still somewhat puzzling, but enough to let me proceed here
and come back to see if I can improve the dependencies another day. 

The time of all involved is greatly appreciated.


Jeff
</pre>
  </body>
</html>

--------------A7C77C0F6CCDF2E9C4A2CFD2--


--===============0442057060621815671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0442057060621815671==--

