Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C612AB8E
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 20:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IPxSdD/gTZMgQvUZb3wQ+aI88OdvmiU4mraQom0xIWk=; b=OXM12CrNJoCqPKpTnyEEPKmAd
	/L8X3XkDZXHw9wIRRgUSo8dqGuujTXjp07kok2arsnAI41stP9cAN15xPIzgwXsbd/EnU/s0WAfHb
	Jibilt0snkcQjw3rJVuoT22O/e/AJYjTH8MaXql+POmIc5hy1dd7NWtrsBoF9sQIixYzgWgecCtgM
	4+fciZNRKb7R7K2nXmRDi1huDC6r9ME9NW5iiDvzbropXTWcH/aUK9rpBZDJ79qj3L7h936rGijad
	GqoKASFnX5VHXgv98btFxjVhlmRGLesQaJJ6ZLAXw16y7piP4xJrCyiDE/SIYibmpxubt9D1iWe97
	pc76p6SCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUxhH-00015J-2g; Sun, 26 May 2019 18:16:39 +0000
Received: from wp175.webpack.hosteurope.de ([80.237.132.182])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxhA-00014x-Ea
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 18:16:33 +0000
Received: from 83-215-242-194.bruck.stat.salzburg-online.at ([83.215.242.194]
 helo=surfer-172-30-0-135-hotspot.internet-for-guests.com); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hUxh3-0000UX-DE; Sun, 26 May 2019 20:16:25 +0200
Date: Sun, 26 May 2019 20:16:24 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190526192856.1290416d@samsung>
References: <03add529-c9ba-6cfe-3ce4-9d209239d675@birger-koblitz.de>
 <20190526192856.1290416d@samsung>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,
 Cezary Jackiewicz <cezary.jackiewicz@gmail.com>
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <CD1E8673-CD6A-4C66-A65F-127B9D2D613E@birger-koblitz.de>
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1558894592;
 fa059ad4; 
X-HE-SMSGID: 1hUxh3-0000UX-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_111632_630859_266CD9B5 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.237.132.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] Support for Edimax EW-7476RPC
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
Content-Type: multipart/mixed; boundary="===============1268737301199774167=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1268737301199774167==
Content-Type: multipart/alternative; boundary="----76CSN6OZDE24HU1LFIYOHU6B2WM0YY"
Content-Transfer-Encoding: 7bit

------76CSN6OZDE24HU1LFIYOHU6B2WM0YY
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'll work on all the open points and add the device description=2E Then I'=
ll submit the next version of the patch=2E

Birger

On 26 May 2019 19:28:56 CEST, Cezary Jackiewicz <cezary=2Ejackiewicz@gmail=
=2Ecom> wrote:
>Hi,
>typo:
>
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ;;
>> +edimax,ew-7476rpc) \
>> +edimax,ew-7478ac)
>
>edimax,ew-7476rpc| \
>edimax,ew-7478ac)
>
>>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ucidef_set_led_netdev "lan" =
"lan" "$boardname:green:internet"
>"eth0"
>>+        ;;=C2=A0=C2=A0=C2=A0=C2=A0
>
>Also working:
>
>ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0"
>"0x20"
>
>(if you rename internet to lan)
>
>--=20
>Pozdrawiam,
> Cezary Jackiewicz
>
>_______________________________________________
>openwrt-devel mailing list
>openwrt-devel@lists=2Eopenwrt=2Eorg
>https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel

------76CSN6OZDE24HU1LFIYOHU6B2WM0YY
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Hi,<br><br>I'll work on all the open points and ad=
d the device description=2E Then I'll submit the next version of the patch=
=2E<br><br>Birger<br><br><div class=3D"gmail_quote">On 26 May 2019 19:28:56=
 CEST, Cezary Jackiewicz &lt;cezary=2Ejackiewicz@gmail=2Ecom&gt; wrote:<blo=
ckquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-=
left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hi,<br>typo:<br><br><blockquote class=3D"gmail_quote=
" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #729fcf; pad=
ding-left: 1ex;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ;;<br>+edimax,=
ew-7476rpc) \<br>+edimax,ew-7478ac)<br></blockquote><br>edimax,ew-7476rpc| =
\<br>edimax,ew-7478ac)<br><br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #729fcf; padding-left: 1e=
x;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ucidef_set_led_netdev "lan"=
 "lan" "$boardname:green:internet" "eth0"<br>+        ;;&nbsp;&nbsp;&nbsp;&=
nbsp;<br></blockquote><br>Also working:<br><br>ucidef_set_led_switch "lan" =
"lan" "$boardname:green:lan" "switch0" "0x20"<br><br>(if you rename interne=
t to lan)<br></pre></blockquote></div></body></html>
------76CSN6OZDE24HU1LFIYOHU6B2WM0YY--


--===============1268737301199774167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1268737301199774167==--

