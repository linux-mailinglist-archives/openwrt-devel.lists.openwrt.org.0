Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522C3E4ACE
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 14:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xXhcoczzmKOiMjhrcYHN28Xt2QL1P55QraQW2f0rZos=; b=gBC9fljDssDeqaZJycko0RRAe
	Mvkeyb6DlDQemLp6BduxxrF+BC3R6qZLlIzuJqV53GHpBeCdzz2LiPLNvnK/AtSeAvYUjUOH46BFK
	tB/fbyVdyDP76RnUjHxGgh+zETMyd0iTcZMnQZ7XyUkhqig7y63rDfaNM79BaAAiG4/Ymv/l8NJVh
	9tkYQudjieb6nmc3SGvWlCSxMvVPLZKdhK+aYg0lN7GPClEe+PlFssjopHIYLkIqatxdig4WBW9a2
	vZ+mT6IiYTnMiZ4tBSF924ApgdjwXMa4OIRQa3zzSLUTdj8f4VfSfsdvaGMcAoHl/XUuhjbT292YQ
	96njpG3HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNySZ-0001mW-2D; Fri, 25 Oct 2019 12:12:51 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNySQ-0001lj-CS
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 12:12:44 +0000
Received: from router_130102686.ia.colt.net ([212.78.171.190]
 helo=[10.18.129.133]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1iNySL-0004XC-So; Fri, 25 Oct 2019 14:12:37 +0200
Date: Fri, 25 Oct 2019 14:12:36 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <005801d58b1e$ad47a0d0$07d6e270$@adrianschmutzler.de>
References: <20190924175256.3845-1-vargagab@gmail.com>
 <005801d58b1e$ad47a0d0$07d6e270$@adrianschmutzler.de>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>, vargagab@gmail.com
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <110C939C-C7EB-41C2-BCF0-E1653727B21A@birger-koblitz.de>
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1572005562;
 681f8ad3; 
X-HE-SMSGID: 1iNySL-0004XC-So
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_051242_564537_FF7DDC5A 
X-CRM114-Status: UNSURE (   4.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Asus RT-AC65P
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
Content-Type: multipart/mixed; boundary="===============3870482493679790538=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3870482493679790538==
Content-Type: multipart/alternative; boundary="----PGAM6WWO9W5ALTLG4FUPJ9DK1VB1VP"
Content-Transfer-Encoding: 7bit

------PGAM6WWO9W5ALTLG4FUPJ9DK1VB1VP
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

No=2E I think this is a bug=2E=20

Birger

On 25 October 2019 12:26:34 CEST, Adrian Schmutzler <mail@adrianschmutzler=
=2Ede> wrote:
>Hi,
>
>> +		led_power: power {
>> +			label =3D "rt-ac85p:blue:power";
>> +			gpios =3D <&gpio0 4 GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger =3D "phy0tpt";
>> +		};
>
>just found this, set for RT-AC65P and RT-AC85P=2E Any reason why the
>power led has a phy0tpt trigger (two WiFi LEDs with phyXradio are
>present, too)?
>
>Best
>
>Adrian

------PGAM6WWO9W5ALTLG4FUPJ9DK1VB1VP
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>No=2E I think this is a bug=2E <br><br>Birger<br><=
br><div class=3D"gmail_quote">On 25 October 2019 12:26:34 CEST, Adrian Schm=
utzler &lt;mail@adrianschmutzler=2Ede&gt; wrote:<blockquote class=3D"gmail_=
quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204=
, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hi,<br><br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #729fcf; padding-le=
ft: 1ex;">+		led_power: power {<br>+			label =3D "rt-ac85p:blue:power";<br>=
+			gpios =3D &lt;&amp;gpio0 4 GPIO_ACTIVE_LOW&gt;;<br>+			linux,default-tr=
igger =3D "phy0tpt";<br>+		};<br></blockquote><br>just found this, set for =
RT-AC65P and RT-AC85P=2E Any reason why the power led has a phy0tpt trigger=
 (two WiFi LEDs with phyXradio are present, too)?<br><br>Best<br><br>Adrian=
<br><br></pre></blockquote></div></body></html>
------PGAM6WWO9W5ALTLG4FUPJ9DK1VB1VP--


--===============3870482493679790538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3870482493679790538==--

