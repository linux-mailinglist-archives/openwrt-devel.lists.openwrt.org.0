Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D74D4680
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 19:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fklg9L6B+ZdEu9gAZld2wecM0E5t6kfsIWJfr3YFDt8=; b=F9u4tT00Ijpw2EXoHWXotymah
	RaWXDBA2hePHRHIVcMvGbXJu8OiU6K3SyUs9I0is/ctJBf87EnX74Ldanhz1lXtuysVoBzYrgWL4b
	6rVK++ySbwyIAaV+r1KK1pvONswz9GiIm4LPFHU027uXFqCKSMWr7mR+HfzrWxt7RNQvPBIKK76fE
	k/gpHZ5n2rHSEuVV7tObvoH4KSPSfeYMo866TKGiAwqxFdhaN/1YlHz8IR1ywzp4mkmJeEmrT3wZl
	tl3gk0C+knNwcIqxa9T5ctZjs+UOkzC7RdTYgFqr60p2BFo3i4U3eeut8j/iz5FvlepiRWAj61bDo
	DF417J+uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyb8-0002od-To; Fri, 11 Oct 2019 17:21:02 +0000
Received: from masdeu.rogerpueyo.com ([5.134.119.116])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyay-0002oG-AX
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 17:20:54 +0000
Received: from [10.1.24.66] (unknown [84.88.85.1])
 by masdeu.rogerpueyo.com (Postfix) with ESMTPSA id 019A7478;
 Fri, 11 Oct 2019 19:14:27 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
 <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
 <20190901073349.ekh6zvtuovseshoq@home.paul.comp>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Openpgp: preference=signencrypt
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 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
Message-ID: <e81da978-ed2d-d1e9-e160-879314523210@guifi.net>
Date: Fri, 11 Oct 2019 19:14:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190901073349.ekh6zvtuovseshoq@home.paul.comp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_102052_634705_17B25318 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Cc: Paul Fertser <fercerpav@gmail.com>
Content-Type: multipart/mixed; boundary="===============7336289194403672795=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7336289194403672795==
Content-Type: multipart/alternative;
 boundary="------------866DACD6ED34BE0165A77052"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------866DACD6ED34BE0165A77052
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I opened a pull request on GitHub to support the Mi Router 4A Gigabit
Edition, which is essentially the same device. You can find it at
https://github.com/openwrt/openwrt/pull/2486

There are a few differences you may want to address:

>>> +	xiaomi,mir3g-v2)
>>> +		wan_mac=3D$(mtd_get_mac_binary factory 0xe006)
>>> +		;;

You may want to add "label_mac=3D$wan_mac" there, if the MAC address on
the back label matches the WAN interface (on the R4G it does).

Also, it looks like a newline should be added at the end of the .dts file=
=2E

>>> +define Device/xiaomi_mir3g-v2
>>> + MTK_SOC :=3D mt7621
>>> + IMAGE_SIZE :=3D 14848k
>>> + DEVICE_VENDOR :=3D Xiaomi
>>> + DEVICE_MODEL :=3D Mi Router 3G
>>> + DEVICE_VARIANT :=3D v2
>>> + DEVICE_ALT0_VENDOR :=3D Xiaomi
>>> + DEVICE_ALT0_MODEL :=3D Mi Router 4A Gigabit Edition
>>> + DEVICE_PACKAGES :=3D kmod-mt7603 kmod-mt76x2 wpad-basic
>>> +endef
>>> +TARGET_DEVICES +=3D xiaomi_mir3g-v2

Since there are two Xiaomi Router 4A variants, the 100m and the Gigabit
Edition, you may want to use:

+ DEVICE_ALT0_VENDOR :=3D Xiaomi
+ DEVICE_ALT0_MODEL :=3D Mi Router 4A + DEVICE_ALT0_VARIANT :=3D Gigabit =
Edition


Last, I added the device to uboot-envtools. Feel free to copy it:
https://github.com/openwrt/openwrt/pull/2486/commits/2625499ca554449e7a19=
bb5f6f61acdefb5a69e1

Best,

Roger


--------------866DACD6ED34BE0165A77052
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi Paul,</p>
    <p>I opened a pull request on GitHub to support the Mi Router 4A
      Gigabit Edition, which is essentially the same device. You can
      find it at <a class="moz-txt-link-freetext" href="https://github.com/openwrt/openwrt/pull/2486">https://github.com/openwrt/openwrt/pull/2486</a></p>
    <p>There are a few differences you may want to address:</p>
    <blockquote type="cite"
      cite="mid:20190901073349.ekh6zvtuovseshoq@home.paul.comp">
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">+	xiaomi,mir3g-v2)
+		wan_mac=$(mtd_get_mac_binary factory 0xe006)
+		;;</pre>
        </blockquote>
      </blockquote>
    </blockquote>
    <p>You may want to add "label_mac=$wan_mac" there, if the MAC
      address on the back label matches the WAN interface (on the R4G it
      does).</p>
    <p>Also, it looks like a newline should be added at the end of the
      .dts file.</p>
    <pre class="content"><span class="p_add">
</span><span class="p_add"></span></pre>
    <blockquote type="cite"
      cite="mid:20190901073349.ekh6zvtuovseshoq@home.paul.comp">
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap=""><span class="p_add">+define Device/xiaomi_mir3g-v2</span>
<span class="p_add">+  MTK_SOC := mt7621</span>
<span class="p_add">+  IMAGE_SIZE := 14848k</span>
<span class="p_add">+  DEVICE_VENDOR := Xiaomi</span>
<span class="p_add">+  DEVICE_MODEL := Mi Router 3G</span>
<span class="p_add">+  DEVICE_VARIANT := v2</span>
<span class="p_add">+  DEVICE_ALT0_VENDOR := Xiaomi</span>
<span class="p_add">+  DEVICE_ALT0_MODEL := Mi Router 4A Gigabit Edition</span>
<span class="p_add">+  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 wpad-basic</span>
<span class="p_add">+endef</span>
<span class="p_add">+TARGET_DEVICES += xiaomi_mir3g-v2</span></pre>
        </blockquote>
      </blockquote>
    </blockquote>
    <p>Since there are two Xiaomi Router 4A variants, the 100m and the
      Gigabit Edition, you may want to use:<br>
    </p>
    <pre class="moz-quote-pre" wrap=""><span class="p_add">+  DEVICE_ALT0_VENDOR := Xiaomi</span>
<span class="p_add">+  DEVICE_ALT0_MODEL := Mi Router 4A
</span><span class="p_add">+  DEVICE_ALT0_VARIANT := Gigabit Edition</span>
</pre>
    <p><br>
    </p>
    <p>Last, I added the device to uboot-envtools. Feel free to copy it:
<a class="moz-txt-link-freetext" href="https://github.com/openwrt/openwrt/pull/2486/commits/2625499ca554449e7a19bb5f6f61acdefb5a69e1">https://github.com/openwrt/openwrt/pull/2486/commits/2625499ca554449e7a19bb5f6f61acdefb5a69e1</a></p>
    <p>Best,</p>
    <p>Roger<br>
    </p>
  </body>
</html>

--------------866DACD6ED34BE0165A77052--


--===============7336289194403672795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7336289194403672795==--

