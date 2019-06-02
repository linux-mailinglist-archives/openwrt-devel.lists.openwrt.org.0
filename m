Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8DB323B8
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 17:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BOaECitNiZTNxYdFBcjt646eIRdZW3ULm0erLRgQFvw=; b=bMfi5N4mUzj6j3bRca1qo7yT9
	q9+eZgnEhA6sOaIYekmlgUFSVG+aYoU4Daj20csxCqdIJJBXdNwrZUv1P+be3uwgW7jBLtbAbicSw
	PUwVDcRTlcGzTm5+dIhNOFaj5y7eAjJexqhrlcFCW5IWeD/yqQzoVA5DoT9HDz2lYWM14Bi7Cuy1X
	64aXDE7CS8c12f+gg8k8AlJ2fhfxUIFYqiCRQjzgNAoQsvX1bzW8zD88WVVyF61M+2NuY2bvetLOl
	0MVRI/O5QjYezYRCtrw0MBZzTiOF8FKyHlGHH9Bf9yPkkaQ4sTtRVvs6qVIjmmMHUkQ9I7WrSwibM
	hps4o/rUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXSaB-0000b2-Ty; Sun, 02 Jun 2019 15:39:39 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXSa3-0000ai-Hb
 for openwrt-devel@lists.openwrt.org; Sun, 02 Jun 2019 15:39:33 +0000
Received: by mail-qt1-x82a.google.com with SMTP id m29so1565405qtu.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 02 Jun 2019 08:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tgN5hd82gLNfsB8RHp4osw/dnNEG3gdTEnDAhDHyarE=;
 b=C/WIwv+sEzRgS90rStochvm7oH03dusrdGTo8sW3xakFx00RemW90+nd+rIolkitMf
 HKgOLHrgowrAZdbAuxfLnltAazkinYdObQA6auokAlvubLWZYGO70r7bGXmuDpK+3UZt
 4aEWYnV2sSCSEmljSYt1YOx6/1x0n1291ut2h6liHT34SoSejRaQrB70nkznS4Myf5BP
 Cp+rSD3TIkj08Vqjupc+CSQCSi6xMx5j723h49QHwB1cF22BY3ii9YVN3A7GIAtcxQZ9
 9AJeDwiIDja50PI0reZs9Q9lTxYcAb9QGDoB2c9TKGvSV++Rfb8vWrOvWnifY7nHXC76
 jfsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tgN5hd82gLNfsB8RHp4osw/dnNEG3gdTEnDAhDHyarE=;
 b=iAAQ1MC+N6tAfdSnzwzG1E652rSC9sczLtVhX8NSDvMDPH5tmujB9pjsL5YReP6dEc
 B5rlwIAex9JkbYYPzsiMRWtLDUHm6eptmUvtNFDNoUHx1xf+3B80myY8ZIGsloTYk1LG
 u2OJACr24D15CT0wmQsalYKdoCyvzU8oOzqShFwqc5vOu9uhj+Z1EQQWb4KUAerbB/iw
 mgc4JDTve86ElZObSDF5f3Kd7HFle+AXBTNKsFL998dc6fjARiEZ0jWfpwXqpX75RPdj
 Fuom5ukXvJ4SxhgJgdzei+0tZnHbS81cOw5Qy2eadY4Zf2FhJnxAurM01WoJaaDvOmGs
 Ao8w==
X-Gm-Message-State: APjAAAV///z9RQRD0QlbjA9hu7VShh0WtTUnjUtfBHTAKZJRZx+G1Roo
 3FziSX/R6UfHIxh0wRJhhmzr2js6onw1h33b/Q==
X-Google-Smtp-Source: APXvYqwFCqhChuOhelJZk6rBVBpie9P0SkAxryYH9SEAnWc3E8SA9vHqOCw0GL4fSopaiKEiTA9jXOD0++DXqEDNhzc=
X-Received: by 2002:aed:3003:: with SMTP id 3mr19014199qte.308.1559489965671; 
 Sun, 02 Jun 2019 08:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <CANDHWrd_nLzKm8AXivb9xGZW=aKFniSS6GQng7NabrB83MmjRg@mail.gmail.com>
 <7dc092d9-2aa3-f2a4-2448-eee0e1a7f2f9@gmail.com>
In-Reply-To: <7dc092d9-2aa3-f2a4-2448-eee0e1a7f2f9@gmail.com>
From: Chris <threshnode@gmail.com>
Date: Sun, 2 Jun 2019 16:39:14 +0100
Message-ID: <CANDHWrdHtN7qf7YYpsE2M2mYKsjFVj7Hf0Av4DbZmpfmtkJXfg@mail.gmail.com>
To: Alberto Bursi <bobafetthotmail@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_083931_595895_EB0EB860 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (threshnode[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82a listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Netgear DM200 Boot Issue/Patch Availability?
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============1814783819612782874=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1814783819612782874==
Content-Type: multipart/alternative; boundary="0000000000006f4a49058a590d82"

--0000000000006f4a49058a590d82
Content-Type: text/plain; charset="UTF-8"

Hi Alberto,

Thanks for explaining the situation to me. I'll get hold of an Arduino and
give this a shot.

All the best,
Chris

On Tue, May 28, 2019 at 4:52 PM Alberto Bursi <bobafetthotmail@gmail.com>
wrote:

>
> Last attempt I saw was here https://github.com/openwrt/openwrt/pull/1770
>
> but it was rejected.
>
>
> I have some experience with the bootloader used in this device, I can
>
> provide more complete instructions to do the uboot fix though.
>
> TTL/serial access seems to be easy (there is a header as you see in the
> photo),
>
> and you need an inexpensive "arduino USB-TTL dongle" to connect to this
> device.
>
> Connect the pins as defined in the wiki, open up your serial
>
> communication program (Putty usually)
>
> and set it for 115200 serial speed, others default.
>
> Then boot the device, press a key to stop boot when you see
>
> "Hit any key to stop autoboot: 2 1 0"
>
> It should stop and accept console commands.
>
> then copy-paste this line
>
> setenv sleep 1;nmrp;sf probe 0:3;sf read $loadaddr 0x30000 0x400000;bootm
> $loadaddr
>
> This will alter the bootloader configuration that is causing the issue.
> Now it will boot kernels up to 4MB big
>
> Will still be able to boot stock firmware, we are just increasing a size
> limit.
>
> and then save the change by writing
>
> saveenv
>
> and then you can reboot the device by pulling the plug or writing
>
> reset
>
> Now you can install OpenWrt as normal.
>
> -Alberto
>
>
> On 28/05/19 14:00, Chris wrote:
>
> Hi folks,
>
> I was wondering if a patch enabling this device was ever released?
>
> http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html
>
> The wiki suggests one can only install/boot into OpenWRT by wiring up a
> JTAG/serial interface and manually intervene... Which is far beyond my
> comfort zone.
>
> Am very eagar to make use of this equipment, so any news would be really
> appreciated.
>
> All the best,
> Chris
>
> _______________________________________________
> openwrt-devel mailing listopenwrt-devel@lists.openwrt.orghttps://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000006f4a49058a590d82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Alberto,</div><div><br></div><div>Thanks for expla=
ining the situation to me. I&#39;ll get hold of an Arduino and give this a =
shot.</div><div><br></div><div>All the best,</div><div>Chris<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, May 28, 2019 at 4:52 PM Alberto Bursi &lt;<a href=3D"mailto:bobafetthotm=
ail@gmail.com">bobafetthotmail@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <p>Last attempt I saw was here
      <a class=3D"gmail-m_9040696186903701216moz-txt-link-freetext" href=3D=
"https://github.com/openwrt/openwrt/pull/1770" target=3D"_blank">https://gi=
thub.com/openwrt/openwrt/pull/1770</a></p>
    <p>but it was rejected.</p>
    <p><br>
    </p>
    <p>I have some experience with the bootloader used in this device, I
      can <br>
    </p>
    <p>provide more complete instructions to do the uboot fix though.</p>
    <p>TTL/serial access seems to be easy (there is a header as you see
      in the photo),</p>
    <p>and you need an inexpensive &quot;arduino USB-TTL dongle&quot; to co=
nnect
      to this device.<br>
    </p>
    <p>Connect the pins as defined in the wiki, open up your serial <br>
    </p>
    <p>communication program (Putty usually)</p>
    <p>and set it for 115200 serial speed, others default.<br>
    </p>
    <p>Then boot the device, press a key to stop boot when you see <br>
    </p>
    <p>&quot;Hit any key to stop autoboot: 2     1     0&quot;</p>
    <p>It should stop and accept console commands.<br>
    </p>
    <p> then copy-paste this line <br>
    </p>
    <p>setenv sleep 1;nmrp;sf probe 0:3;sf read $loadaddr 0x30000
      0x400000;bootm $loadaddr</p>
    <p>This will alter the bootloader configuration that is causing the
      issue. Now it will boot kernels up to 4MB big</p>
    <p>Will still be able to boot stock firmware, we are just increasing
      a size limit.<br>
    </p>
    <p>and then save the change by writing</p>
    <p>saveenv<br>
    </p>
    <p>and then you can reboot the device by pulling the plug or writing<br=
>
    </p>
    <p>reset</p>
    <p>Now you can install OpenWrt as normal.<br>
    </p>
    <p>-Alberto<br>
    </p>
    <p><br>
    </p>
    <div class=3D"gmail-m_9040696186903701216moz-cite-prefix">On 28/05/19 1=
4:00, Chris wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi folks,</div>
        <div><br>
        </div>
        <div>I was wondering if a patch enabling this device was ever
          released?</div>
        <div><br>
        </div>
        <div><a href=3D"http://lists.infradead.org/pipermail/openwrt-devel/=
2019-January/015556.html" target=3D"_blank">http://lists.infradead.org/pipe=
rmail/openwrt-devel/2019-January/015556.html</a></div>
        <div><br>
        </div>
        <div>The wiki suggests one can only install/boot into OpenWRT by
          wiring up a JTAG/serial interface and manually intervene...
          Which is far beyond my comfort zone.<br>
        </div>
        <div><br>
        </div>
        <div>Am very eagar to make use of this equipment, so any news
          would=C2=A0be really appreciated.</div>
        <div><br>
        </div>
        <div>All the best,</div>
        <div>Chris<br>
        </div>
      </div>
      <br>
      <fieldset class=3D"gmail-m_9040696186903701216mimeAttachmentHeader"><=
/fieldset>
      <pre class=3D"gmail-m_9040696186903701216moz-quote-pre">_____________=
__________________________________
openwrt-devel mailing list
<a class=3D"gmail-m_9040696186903701216moz-txt-link-abbreviated" href=3D"ma=
ilto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwrt-devel@lists=
.openwrt.org</a>
<a class=3D"gmail-m_9040696186903701216moz-txt-link-freetext" href=3D"https=
://lists.openwrt.org/mailman/listinfo/openwrt-devel" target=3D"_blank">http=
s://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--0000000000006f4a49058a590d82--


--===============1814783819612782874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1814783819612782874==--

