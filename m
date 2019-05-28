Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F4F2CAAF
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 17:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jcRJF8VAlOTnKpjDLQu9DuMb7eTgnpq1Qf/ZXo5z8Ak=; b=u89np8383ZcZAwyRHVp4OMtoq
	NKSPjtq9Rtsbn5aHhFzn1npPFEKDNLhlhE6ohCB4cwiMS8d/YhUsKsWfztz10ueGLgx7FENKoHDR0
	U2Fxlf9R78U/VSO11qbc9qYEgyIs3quEorWRfVjShd17mkZvCjgToh9pLiohunh8UNyCDJQd0oXAH
	Oze4m4Xs2Blnas6JigJpYmAAwsMGbLlfhIdBmXTLqRTLZPy967bw8KONDEH0AlhqX/n148/FdkaZS
	RAW9zA/Y7cLsst6u7feEw2erJTajeaQnGwDaDqKA/MjtwBC3OPg5IQJxMRfuSTo7F6kF7LVAJec7I
	KZ8ja5D+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeOB-0000lJ-UL; Tue, 28 May 2019 15:51:47 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeO2-0000jx-Mr
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 15:51:43 +0000
Received: by mail-wm1-x32b.google.com with SMTP id d17so3524257wmb.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 May 2019 08:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=CaRHiTeeNv9PUsyXbVz0S+nblrabbpfupUJD98zi/HQ=;
 b=dD2x2z4VPjFwlPaG0z0r1fMtOvNT7lZBYnwCM45Ym7fwO51sVrsCpPaICK8e08Mq8H
 y8DmNy6y0S+4iSnyPREYlVyjtRByU4mcq8FGVvboQjU2A+pzg7NujFvp+9dI5J+Cczrz
 XMPyxGPwqhSkD0SgBa9ky5ljS/HH30jM2I9CGRbYMTzHpB5W8FPs5zPUDZ0AcniQ9m5R
 wswv0yt2mrrvM+/8Ojw7GSOypVaHNCC/7Z5ppl1dqF0A/aH3VQmVMyKQ7K+sYD6IJRek
 b7xMDYUms1FXZG2gR4uBYV52V+mrKrmw/1lNwbJcZs9og26jY7cj8mEqMYuyvYuWeq7r
 Jzfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=CaRHiTeeNv9PUsyXbVz0S+nblrabbpfupUJD98zi/HQ=;
 b=c+UE2MBwLytZmZQb7hY1ERFnBGS+8r8+vpxwxzQQ8dSrPjecbTZts0qh4rdIdES/Wb
 ewkaQsbMaHQ4kFSpkR2v1mDw2I0xmXcpSWoeXtTEKU7JHm2riYvKA/voXVpMyAIMjtvL
 aXwOYWertnTWw6rShiMJCXDq4VYstzkHU6SV4eWzm2Yhxk3FuZVMEOZbqp3egIocU55d
 nM7gT1YbcWTSguTewZVuQ9mRZ8KxLuPeDrsgty47d6wTVa69AACwxvSi+7wFI83HzU9p
 l7e9H1APeHZrttEa/DtgB7XZ2jiT52RIl+ogOJNU4UyHCDla/3+NjFhw0Mk2wiWrC/gt
 N6rA==
X-Gm-Message-State: APjAAAXzq4XRhcYrED5FTUSZeswctqyi1kJ011x/zKBZyumUUXHEumiJ
 5dKLNTvRDE6Jhhs/dCVA1YXYFfKj
X-Google-Smtp-Source: APXvYqz0GHuWb+KPS4uHjeo7Wc9eFBnr0kb1Xe7s85GCrGPIx2FUQxtACt7uIIFe7fMEqm5QYCjo1A==
X-Received: by 2002:a7b:c397:: with SMTP id s23mr3470588wmj.85.1559058686798; 
 Tue, 28 May 2019 08:51:26 -0700 (PDT)
Received: from [192.168.111.134] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id l14sm13604914wrt.57.2019.05.28.08.51.25
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 08:51:26 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <CANDHWrd_nLzKm8AXivb9xGZW=aKFniSS6GQng7NabrB83MmjRg@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <7dc092d9-2aa3-f2a4-2448-eee0e1a7f2f9@gmail.com>
Date: Tue, 28 May 2019 17:51:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANDHWrd_nLzKm8AXivb9xGZW=aKFniSS6GQng7NabrB83MmjRg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_085139_604833_F95C505D 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============7996045363496861309=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7996045363496861309==
Content-Type: multipart/alternative;
 boundary="------------21C804BEF8E9D103CA62EAA2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------21C804BEF8E9D103CA62EAA2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Last attempt I saw was here https://github.com/openwrt/openwrt/pull/1770

but it was rejected.


I have some experience with the bootloader used in this device, I can

provide more complete instructions to do the uboot fix though.

TTL/serial access seems to be easy (there is a header as you see in the 
photo),

and you need an inexpensive "arduino USB-TTL dongle" to connect to this 
device.

Connect the pins as defined in the wiki, open up your serial

communication program (Putty usually)

and set it for 115200 serial speed, others default.

Then boot the device, press a key to stop boot when you see

"Hit any key to stop autoboot: 2  1  0"

It should stop and accept console commands.

then copy-paste this line

setenv sleep 1;nmrp;sf probe 0:3;sf read $loadaddr 0x30000 
0x400000;bootm $loadaddr

This will alter the bootloader configuration that is causing the issue. 
Now it will boot kernels up to 4MB big

Will still be able to boot stock firmware, we are just increasing a size 
limit.

and then save the change by writing

saveenv

and then you can reboot the device by pulling the plug or writing

reset

Now you can install OpenWrt as normal.

-Alberto


On 28/05/19 14:00, Chris wrote:
> Hi folks,
>
> I was wondering if a patch enabling this device was ever released?
>
> http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html
>
> The wiki suggests one can only install/boot into OpenWRT by wiring up 
> a JTAG/serial interface and manually intervene... Which is far beyond 
> my comfort zone.
>
> Am very eagar to make use of this equipment, so any news would be 
> really appreciated.
>
> All the best,
> Chris
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------21C804BEF8E9D103CA62EAA2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <p>Last attempt I saw was here
      <a class="moz-txt-link-freetext" href="https://github.com/openwrt/openwrt/pull/1770">https://github.com/openwrt/openwrt/pull/1770</a></p>
    <p>but it was rejected.</p>
    <p><br>
    </p>
    <p>I have some experience with the bootloader used in this device, I
      can <br>
    </p>
    <p>provide more complete instructions to do the uboot fix though.</p>
    <p>TTL/serial access seems to be easy (there is a header as you see
      in the photo),</p>
    <p>and you need an inexpensive "arduino USB-TTL dongle" to connect
      to this device.<br>
    </p>
    <p>Connect the pins as defined in the wiki, open up your serial <br>
    </p>
    <p>communication program (Putty usually)</p>
    <p>and set it for 115200 serial speed, others default.<br>
    </p>
    <p>Then boot the device, press a key to stop boot when you see <br>
    </p>
    <p>"Hit any key to stop autoboot: 2  1  0"</p>
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
    <p>and then you can reboot the device by pulling the plug or writing<br>
    </p>
    <p>reset</p>
    <p>Now you can install OpenWrt as normal.<br>
    </p>
    <p>-Alberto<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 28/05/19 14:00, Chris wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANDHWrd_nLzKm8AXivb9xGZW=aKFniSS6GQng7NabrB83MmjRg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi folks,</div>
        <div><br>
        </div>
        <div>I was wondering if a patch enabling this device was ever
          released?</div>
        <div><br>
        </div>
        <div><a
href="http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html"
            moz-do-not-send="true">http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html</a></div>
        <div><br>
        </div>
        <div>The wiki suggests one can only install/boot into OpenWRT by
          wiring up a JTAG/serial interface and manually intervene...
          Which is far beyond my comfort zone.<br>
        </div>
        <div><br>
        </div>
        <div>Am very eagar to make use of this equipment, so any news
          would be really appreciated.</div>
        <div><br>
        </div>
        <div>All the best,</div>
        <div>Chris<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  </body>
</html>

--------------21C804BEF8E9D103CA62EAA2--


--===============7996045363496861309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7996045363496861309==--

