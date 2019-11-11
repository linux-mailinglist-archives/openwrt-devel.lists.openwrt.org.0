Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E57F822C
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 22:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jo/zWSY8EqRikL1js7qVvjpAurNPKL4rpuZbrlvT1rk=; b=YocDnXHNe5pmHPBHZ3kEFgsi4
	JVLBnU5JLi6Cdyto4K3uCON+MCC1PEAaKt8SZsuphO0WEjmqS2zIGN30C8G0ev1A8ZcoKPBkWGVFA
	kSalETpYwL0HHCnlRAu2bYq11qEDnzUp/hsYE5LF67/CsTjmBjNl9ZgbM9CpTcEXXdSt+fw+rqHzn
	We1LAOakQCaJ/ABis+bk18RU35OvICxKEgf0e6b2pIJbqdP+PSHDPCQLmPEjMMhbv9/189BQv4UBS
	Hag4K1NT4zWRu5vC7/ix2YRqEG6N1eEshRtQq09FP2zPWWps7UlvDPczSyoAFj9TAT7LI9HZMrhea
	AxLxH4UrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUH92-0005Br-FV; Mon, 11 Nov 2019 21:22:44 +0000
Received: from smtp1.guifi.net ([109.69.9.53] helo=smtp1.elserrat.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUH8t-0005Ap-A0
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 21:22:37 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp1.elserrat.org (Postfix) with ESMTP id 47BkNQ66XLz3w3n;
 Mon, 11 Nov 2019 22:22:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
 content-type:content-type:in-reply-to:mime-version:user-agent
 :date:date:message-id:from:from:references:subject:subject
 :received:received:received; s=dkim; t=1573507334; x=1575321735;
 bh=SOmwYcuWhl+oAck7DEyHkmnnBssQJgxYl3L0U/wdXZ0=; b=W8xVnPuN05uz
 CBDFF5I5qXzMSEVwPdBLJZwyV6EOuAzN2hE1qElRLwgrTWvzn/efw34rqZELDA9D
 2P7terABzT8intL7el/eDwArzuf9NFvRS0qFnFe1lVQ79GTwwo7ZhZeYovKi615Q
 nU5r6CpejjSvyryXpHcjP9z+wjIgyOPMawxWWNtYkwP18T+r/cq9pXl05R0Sg+xC
 wK3b/KYELB57sO7R8ZAOsezIlpB5X3ulJKPaVBwwuPyBx8GetwNt7K/XSi74gDoA
 28T2SvYUZpmQfRwLqhsh6vQRaC2tKF8ABt7rR3Qh6NM39m2xGDB8iT9bUV8Ch+yp
 +JxLMNUy8w==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.elserrat.org
X-Virus-Scanned: Scrollout F1 at elserrat.org
Received: from smtp1.elserrat.org ([127.0.0.1])
 by localhost (smtp1.elserrat.org [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id bKP6Df2BMB6C; Mon, 11 Nov 2019 22:22:14 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
 by smtp1.elserrat.org (Postfix) with ESMTP id 47BkNQ3BqWz3w1S;
 Mon, 11 Nov 2019 22:22:13 +0100 (CET)
Received: from [10.8.0.14] (gw-4-vpn-i.ac.upc.es [147.83.35.81])
 by mail.guifi.net (Postfix) with ESMTPSA id 9A6286A782B;
 Mon, 11 Nov 2019 22:22:06 +0100 (CET)
To: openwrt-devel@lists.openwrt.org
References: <20191111154224.1476-1-admin@kryma.net>
 <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Openpgp: preference=signencrypt
Autocrypt: addr=roger.pueyo@guifi.net; keydata=
 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
Message-ID: <b8afe62e-867f-2d60-2c0a-08d01ebd9fa4@guifi.net>
Date: Mon, 11 Nov 2019 15:21:56 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_132235_787248_A0000CCD 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.69.9.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-E130N
 v2
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
Cc: admin@kryma.net
Content-Type: multipart/mixed; boundary="===============5128552871745619606=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5128552871745619606==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="FJiQdei9xj57A8Wtd76ze6v8nevoDzusd"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--FJiQdei9xj57A8Wtd76ze6v8nevoDzusd
Content-Type: multipart/mixed; boundary="tBOgbTV80gmi7Yb79FwSk5TLhfozYWF7j";
 protected-headers="v1"
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
To: openwrt-devel@lists.openwrt.org
Cc: admin@kryma.net
Message-ID: <b8afe62e-867f-2d60-2c0a-08d01ebd9fa4@guifi.net>
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-E130N
 v2
References: <20191111154224.1476-1-admin@kryma.net>
 <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
In-Reply-To: <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>

--tBOgbTV80gmi7Yb79FwSk5TLhfozYWF7j
Content-Type: multipart/alternative;
 boundary="------------22E604D30583D33CC76B251E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------22E604D30583D33CC76B251E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

In addition to Adrian's comments, could it be that the device was a
802.11bgn router?
www.comfast.com.cn/index.php?m=3Dcontent&c=3Dindex&a=3Dshow&catid=3D19&id=
=3D23

Cheers,

Roger

El 11/11/19 a les 10:09, Adrian Schmutzler ha escrit:
> Hi,
>
>> +	aliases {
>> +		serial0 =3D &uart;
>> +		led-boot =3D &lan;
>> +		led-failsafe =3D &lan;
>> +		led-upgrade =3D &lan;
> Please don't use LAN here, as it will be ambiguous.
> For TP-Link CPE devices, we relied on rssi_high for this task, so eithe=
r use this one or choose "unused".
> Please prefix the led label (but not the node name) with "led_", so eit=
her led_rssihigh or led_unused ...
>
>> +		label-mac-device =3D &eth0;
>> +	};
>> +
>> +	leds {
>> +		compatible =3D "gpio-leds";
>> +
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&led_rssimediumhigh_pin>;
>> +
>> +		wlan {
>> +			label =3D "cf-e130n-v2:green:wlan";
>> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger =3D "phy0tpt";
>> +		};
>> +
>> +		lan: lan {
>> +			label =3D "cf-e130n-v2:green:lan";
>> +			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		unused {
>> +			label =3D "cf-e130n-v2:green:unused";
>> +			gpios =3D <&gpio 3 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		rssilow {
>> +			label =3D "cf-e130n-v2:red:rssilow";
>> +			gpios =3D <&gpio 11 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		rssimediumlow {
>> +			label =3D "cf-e130n-v2:red:rssimediumlow";
>> +			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		rssimediumhigh {
>> +			label =3D "cf-e130n-v2:green:rssimediumhigh";
>> +                        // No individual GPIOs matched this LED!
>> +		};
>> +
>> +		rssihigh {
>> +			label =3D "cf-e130n-v2:green:rssihigh";
>> +			gpios =3D <&gpio 16 GPIO_ACTIVE_LOW>;
>> +		};
>> +	};
>> +
>> +	keys {
>> +		compatible =3D "gpio-keys";
>> +
>> +		reset {
>> +			label =3D "reset";
>> +			linux,code =3D <KEY_RESTART>;
>> +			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
>> +			debounce-interval =3D <60>;
>> +		};
>> +	};
>> +};
>> +
>> +&pinmux {
>> +		led_rssimediumhigh_pin: pinmux_rssimediumhigh_pin {
>> +			pinctrl-single,bits =3D <0x10 0x0 0xff>;
>> +		};
> Single tab indent.
>
>> +};
>> +
>> +&spi {
>> +	status =3D "okay";
>> +	num-cs =3D <1>;
> Add empty line after status.
>
>> +
>> +	flash@0 {
>> +		compatible =3D "jedec,spi-nor";
>> +		reg =3D <0>;
>> +		spi-max-frequency =3D <25000000>;
>> +
>> +		partitions {
>> +			compatible =3D "fixed-partitions";
>> +			#address-cells =3D <1>;
>> +			#size-cells =3D <1>;
>> +
>> +			uboot:	partition@0 {
>> +				label =3D "u-boot";
>> +				reg =3D <0x000000 0x010000>;
>> +				read-only;
>> +			};
>> +
>> +			art: partition@10000 {
>> +				label =3D "art";
>> +				reg =3D <0x010000 0x010000>;
>> +				read-only;
>> +			};
>> +
>> +			firmware: partition@20000 {
>> +				compatible =3D "denx,uimage";
>> +				label =3D "firmware";
>> +				reg =3D <0x020000 0x7d0000>;
>> +			};
>> +
>> +			nvram: partition@7f0000 {
>> +				label =3D "nvram";
>> +				reg =3D <0x7f0000 0x010000>;
>> +				read-only;
>> +			};
> We typically only add node labels when they are required, so here we wo=
uld only need "art:". Keep the label properties, though ...
>
>> +		};
>> +	};
>> +};
>> +
>> +&uart {
>> +	status =3D "okay";
>> +};
>> +
>> +&eth0 {
>> +	status =3D "okay";
>> +	phy-handle =3D <&swphy0>;
>> +	mtd-mac-address =3D <&art 0x0>;
> Add empty lines after status and after phy-handle.
>
>> +
>> +	gmac-config {
>> +		device =3D <&gmac>;
>> +		switch-phy-swap =3D <1>;
>> +	};
>> +};
>> +
>> +&wmac {
>> +	status =3D "okay";
> Add empty line after status.
>
>> +	mtd-cal-data =3D <&art 0x1000>;
>> +};
>> +
>> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds=

>> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> index fbb0d0ea03..3046d34605 100755
>> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> @@ -47,6 +47,14 @@ comfast,cf-e120a-v3)
>>  	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
>> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
>>  	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh=
"
>> "wlan0" "76" "100"
>>  	;;
>> +comfast,cf-e130n-v2)
>> +	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
>> +	ucidef_set_rssimon "wlan0" "200000" "1"
>> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow"
>> "wlan0" "1" "100"
>> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW"
>> "$boardname:red:rssimediumlow" "wlan0" "26" "100"
>> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
>> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
> Will this work without a defined gpio?
>
>> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh=
"
>> "wlan0" "76" "100"
>> +	;;
>>  comfast,cf-e313ac)
>>  	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0"
>> "0x02"
>>  	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
>> diff --git a/target/linux/ath79/image/generic.mk
>> b/target/linux/ath79/image/generic.mk
>> index 70631c20d0..48d6864ecb 100644
>> --- a/target/linux/ath79/image/generic.mk
>> +++ b/target/linux/ath79/image/generic.mk
>> @@ -258,6 +258,16 @@ define Device/comfast_cf-e120a-v3
>>  endef
>>  TARGET_DEVICES +=3D comfast_cf-e120a-v3
>>
>> +define Device/comfast_cf-e130n-v2
>> +  ATH_SOC :=3D qca9531
>> +  DEVICE_VENDOR :=3D COMFAST
>> +  DEVICE_MODEL :=3D CF-E130N
>> +  DEVICE_VARIANT :=3D v2
>> +  DEVICE_PACKAGES :=3D rssileds kmod-leds-gpio -swconfig -uboot-envto=
ols
>> +  IMAGE_SIZE :=3D 16192k
> That's wrong. You have 0x7d0000, not 0xfd0000 ...
>
> Best
>
> Adrian=20
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------22E604D30583D33CC76B251E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <p>Hi,</p>
    <p>In addition to Adrian's comments, could it be that the device was
      a 802.11bgn router?
<a class=3D"moz-txt-link-abbreviated" href=3D"http://www.comfast.com.cn/i=
ndex.php?m=3Dcontent&amp;c=3Dindex&amp;a=3Dshow&amp;catid=3D19&amp;id=3D2=
3">www.comfast.com.cn/index.php?m=3Dcontent&amp;c=3Dindex&amp;a=3Dshow&am=
p;catid=3D19&amp;id=3D23</a></p>
    <p>Cheers,</p>
    <p>Roger<br>
    </p>
    <div class=3D"moz-cite-prefix">El 11/11/19 a les 10:09, Adrian
      Schmutzler ha escrit:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">+	aliases {
+		serial0 =3D &amp;uart;
+		led-boot =3D &amp;lan;
+		led-failsafe =3D &amp;lan;
+		led-upgrade =3D &amp;lan;
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Please don't use LAN here, as it will be ambiguous.
For TP-Link CPE devices, we relied on rssi_high for this task, so either =
use this one or choose "unused".
Please prefix the led label (but not the node name) with "led_", so eithe=
r led_rssihigh or led_unused ...

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">+		label-mac-device =3D &a=
mp;eth0;
+	};
+
+	leds {
+		compatible =3D "gpio-leds";
+
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D &lt;&amp;led_rssimediumhigh_pin&gt;;
+
+		wlan {
+			label =3D "cf-e130n-v2:green:wlan";
+			gpios =3D &lt;&amp;gpio 0 GPIO_ACTIVE_LOW&gt;;
+			linux,default-trigger =3D "phy0tpt";
+		};
+
+		lan: lan {
+			label =3D "cf-e130n-v2:green:lan";
+			gpios =3D &lt;&amp;gpio 2 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		unused {
+			label =3D "cf-e130n-v2:green:unused";
+			gpios =3D &lt;&amp;gpio 3 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		rssilow {
+			label =3D "cf-e130n-v2:red:rssilow";
+			gpios =3D &lt;&amp;gpio 11 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		rssimediumlow {
+			label =3D "cf-e130n-v2:red:rssimediumlow";
+			gpios =3D &lt;&amp;gpio 12 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		rssimediumhigh {
+			label =3D "cf-e130n-v2:green:rssimediumhigh";
+                        // No individual GPIOs matched this LED!
+		};
+
+		rssihigh {
+			label =3D "cf-e130n-v2:green:rssihigh";
+			gpios =3D &lt;&amp;gpio 16 GPIO_ACTIVE_LOW&gt;;
+		};
+	};
+
+	keys {
+		compatible =3D "gpio-keys";
+
+		reset {
+			label =3D "reset";
+			linux,code =3D &lt;KEY_RESTART&gt;;
+			gpios =3D &lt;&amp;gpio 17 GPIO_ACTIVE_LOW&gt;;
+			debounce-interval =3D &lt;60&gt;;
+		};
+	};
+};
+
+&amp;pinmux {
+		led_rssimediumhigh_pin: pinmux_rssimediumhigh_pin {
+			pinctrl-single,bits =3D &lt;0x10 0x0 0xff&gt;;
+		};
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Single tab indent.

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">+};
+
+&amp;spi {
+	status =3D "okay";
+	num-cs =3D &lt;1&gt;;
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Add empty line after status.

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">+
+	flash@0 {
+		compatible =3D "jedec,spi-nor";
+		reg =3D &lt;0&gt;;
+		spi-max-frequency =3D &lt;25000000&gt;;
+
+		partitions {
+			compatible =3D "fixed-partitions";
+			#address-cells =3D &lt;1&gt;;
+			#size-cells =3D &lt;1&gt;;
+
+			uboot:	partition@0 {
+				label =3D "u-boot";
+				reg =3D &lt;0x000000 0x010000&gt;;
+				read-only;
+			};
+
+			art: partition@10000 {
+				label =3D "art";
+				reg =3D &lt;0x010000 0x010000&gt;;
+				read-only;
+			};
+
+			firmware: partition@20000 {
+				compatible =3D "denx,uimage";
+				label =3D "firmware";
+				reg =3D &lt;0x020000 0x7d0000&gt;;
+			};
+
+			nvram: partition@7f0000 {
+				label =3D "nvram";
+				reg =3D &lt;0x7f0000 0x010000&gt;;
+				read-only;
+			};
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
We typically only add node labels when they are required, so here we woul=
d only need "art:". Keep the label properties, though ...

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">+		};
+	};
+};
+
+&amp;uart {
+	status =3D "okay";
+};
+
+&amp;eth0 {
+	status =3D "okay";
+	phy-handle =3D &lt;&amp;swphy0&gt;;
+	mtd-mac-address =3D &lt;&amp;art 0x0&gt;;
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Add empty lines after status and after phy-handle.

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">+
+	gmac-config {
+		device =3D &lt;&amp;gmac&gt;;
+		switch-phy-swap =3D &lt;1&gt;;
+	};
+};
+
+&amp;wmac {
+	status =3D "okay";
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Add empty line after status.

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">+	mtd-cal-data =3D &lt;&am=
p;art 0x1000&gt;;
+};
+
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index fbb0d0ea03..3046d34605 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -47,6 +47,14 @@ comfast,cf-e120a-v3)
 	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
"$boardname:green:rssimediumhigh" "wlan0" "51" "100"
 	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh"
"wlan0" "76" "100"
 	;;
+comfast,cf-e130n-v2)
+	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	ucidef_set_rssimon "wlan0" "200000" "1"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow"
"wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW"
"$boardname:red:rssimediumlow" "wlan0" "26" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
"$boardname:green:rssimediumhigh" "wlan0" "51" "100"
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Will this work without a defined gpio?

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">+	ucidef_set_led_rssi "rss=
ihigh" "RSSIHIGH" "$boardname:green:rssihigh"
"wlan0" "76" "100"
+	;;
 comfast,cf-e313ac)
 	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0"
"0x02"
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
diff --git a/target/linux/ath79/image/generic.mk
b/target/linux/ath79/image/generic.mk
index 70631c20d0..48d6864ecb 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -258,6 +258,16 @@ define Device/comfast_cf-e120a-v3
 endef
 TARGET_DEVICES +=3D comfast_cf-e120a-v3

+define Device/comfast_cf-e130n-v2
+  ATH_SOC :=3D qca9531
+  DEVICE_VENDOR :=3D COMFAST
+  DEVICE_MODEL :=3D CF-E130N
+  DEVICE_VARIANT :=3D v2
+  DEVICE_PACKAGES :=3D rssileds kmod-leds-gpio -swconfig -uboot-envtools=

+  IMAGE_SIZE :=3D 16192k
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
That's wrong. You have 0x7d0000, not 0xfd0000 ...

Best

Adrian=20
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
openwrt-devel mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:openwrt-devel@lists.=
openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.openwrt.org/mail=
man/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/op=
enwrt-devel</a>
</pre>
    </blockquote>
  </body>
</html>

--------------22E604D30583D33CC76B251E--

--tBOgbTV80gmi7Yb79FwSk5TLhfozYWF7j--

--FJiQdei9xj57A8Wtd76ze6v8nevoDzusd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEwCTDpYvv87wDBo8fWvSKN+NXZrEFAl3J0PQACgkQWvSKN+NX
ZrEg0hAAs0R4GKRoO+30/5o6xhXiw8CKRqDif4xUr4C3fM22I44yv44U6+iv9f24
/V8QihRz+iV+NzgN3egKVqYiNerLM587GnITH15YJ3EL53NQrbE1xEj2pyZUdXJ0
RJDMGiio0wXleI9vse0q32KptzwoEDC0J8CU4Rlg3pW/e3Z2zF04WwyBnGmwYUhA
0utMqIcXTl6nfmxwr4rde44IW6oLGjq6WKd6g4vJ/oHR71ihhPwmx7UV/uwQU8BB
VEBvjlhwgpcDyUhpckCbsZ0/BdaWfLJa7ZcL3rgOXLasszv6gjXWWwH9GdE3HUSZ
jqAbB+pq5YuV2a3QCgYbPP0k3y+dkhn9dwZQ0a6hTyl1Efu7K/hvGAXsMfkewnGK
/iry7NJpVVCS/GDDOJlnl9rrjzo6UzEo27L/u06/3S7m/bn9fBj1clowayophfCB
OCSfz2Zx4LUltz8CnkiKJgAEctWxF+I2Vke31xp+2iBTA9OAiYvwHO2oVeQRknkl
rpxSM0dTpQ0iyZWMj56S7ZVQ6pEtpJwKsq/Moq9o4qBfeR0WVJ7L0BEIEa4ZFPN0
072/dUAMbm9erS5WqvwhPL8ofO/cfNz6agz6JuYrk69eL5Ve4Dbq+NmDY3S/+yXd
9gcWcqDvcAi/usBHH+92S3sX7WC/JiJQ6Sx90Rz6+CVLhUUMbzA=
=hFpF
-----END PGP SIGNATURE-----

--FJiQdei9xj57A8Wtd76ze6v8nevoDzusd--


--===============5128552871745619606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5128552871745619606==--

