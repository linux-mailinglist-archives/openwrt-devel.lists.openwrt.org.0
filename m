Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23DA324CC
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 22:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Evjyp8Dp1ZK2+TTCWOf3Rz5xXXkJ/8nUuxVbbQzuKXs=; b=SKl+uVddp1IPYbDnzHmiR51Q1
	FmfmNHHSlc+91ls7jq2bNGtluFMqbHOOXbSeju+TK61cNo4IlVnaPD7UeUFuLcGL7RnE66ztoRk83
	AVvMNhmbz8yFcy0zdQVmJB0MzJo63rxo68l/1Feo3fJFS1p++jgLvgRn2nqnDAwWnv8pt3v+aeUX2
	DbMBoGv2IHmaFCNjA5PQx3HCaqtIVZVEQqppBLXslv3NAvEHXzPX4g+C+I485QV1/htpphYatqV9z
	Vc1HPT+xSRcO6yncAnFmoPBF+GCbeMNBhoSleBfFY1yEknOEiJ5cOGQgWisSgElQnphBR8T61RjiZ
	waKiEVSNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXXJH-0006hX-GI; Sun, 02 Jun 2019 20:42:31 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXXJA-0006h4-Qk
 for openwrt-devel@lists.openwrt.org; Sun, 02 Jun 2019 20:42:26 +0000
Received: by mail-wr1-x429.google.com with SMTP id e16so1690739wrn.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 02 Jun 2019 13:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=P5nZmbXRGlqP9skoyWzMhC68jX8HmDRQ6c77odWdxNU=;
 b=uiGBzyzxQAhG/SWDGnwjs/0egy6NdG2Uul1Mo3zoTcEMqs27RKAeZmFffIh9QkfgdQ
 QLCpwXPa8Jyy5wUs/C2/CyOhtZtuQbjGQsBvVCyrIiSzVQ7A1bDkTgt715/kdGbsF45b
 W0sOP0zufOZOz3g/XzM8qixdvdt99S61FXzkgfzzwDfDGU+VJ/pU7RIAXHYSTJD4Dg/Z
 rrXY8dCQXM+H14YrowuZR89esqCOqduZL1pQIYhCmEQxFrQJE4PFm62u06EK5XOySRhH
 V1KbfPDxIvUzfzNZexoV9KEZh/6fzbUq7QEdX9yaVFJeHzm/xJmikcbjbHrisKSelnIR
 xu7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=P5nZmbXRGlqP9skoyWzMhC68jX8HmDRQ6c77odWdxNU=;
 b=N3hEQEgtUTJzFzm969ZJK3t5uV1whjWgunZq91z7plqfndgQbMlQSsj5kxm9hMrziC
 wWQNRlAY7FfzRl9OkSCwtcX/uaeVZSopbOzsCSK37YrZgaUhDWu97Bz31/IkHbheU/CL
 AsI0EQYGj5hWbr1lYogLQKpd0ZlrUl+dsu3sALd4RnbNvOf+Em1KyOTLbmFS82KrygWx
 Xy3hHQVDkE5vWGDHcJ+XgoxLTRnTQVDcLIiaKvYrkHkdSHRQIrFAbrQ32v/n7dopG82W
 G5tBeaMPjmNVivLhtDmBoMuPQc7uoxl6jw/joD1s/bldOe3z7Tq0bMEpUpVKlHbRRbn1
 AteQ==
X-Gm-Message-State: APjAAAWv1kJ0JhE3uCYlzLvAWafVXLMiwlmNS8EAk17D+CWSPIYLtD6G
 zMZLzL30l9g56Lm1YSX01eIokuj7
X-Google-Smtp-Source: APXvYqxYSDspyPuYJDiREc3iDTE1P8bEh5pOEcdkWL+PYolTHLSoaObyiZVaU4sMv6KoCWaKRevdiQ==
X-Received: by 2002:a5d:6b90:: with SMTP id n16mr14016223wrx.206.1559508138160; 
 Sun, 02 Jun 2019 13:42:18 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id s7sm12268761wmc.2.2019.06.02.13.42.12
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 13:42:16 -0700 (PDT)
To: Chris <threshnode@gmail.com>
References: <CANDHWrd_nLzKm8AXivb9xGZW=aKFniSS6GQng7NabrB83MmjRg@mail.gmail.com>
 <7dc092d9-2aa3-f2a4-2448-eee0e1a7f2f9@gmail.com>
 <CANDHWrdHtN7qf7YYpsE2M2mYKsjFVj7Hf0Av4DbZmpfmtkJXfg@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <5667b3c1-d675-dc9e-8b33-27d6629d1111@gmail.com>
Date: Sun, 2 Jun 2019 22:42:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANDHWrdHtN7qf7YYpsE2M2mYKsjFVj7Hf0Av4DbZmpfmtkJXfg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_134224_873556_72563C52 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============0451420699174125920=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0451420699174125920==
Content-Type: multipart/alternative;
 boundary="------------B45A806D4F3359E4587B3BE1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B45A806D4F3359E4587B3BE1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

It's not an Arduino, it's a USB dongle to communicate with Arduino

(and any other embedded device's) TTL serial pins.

Search for "arduino USB-TTL dongle" on ebay or amazon to find this tool.

-Alberto

On 02/06/19 17:39, Chris wrote:
> Hi Alberto,
>
> Thanks for explaining the situation to me. I'll get hold of an Arduino 
> and give this a shot.
>
> All the best,
> Chris
>
> On Tue, May 28, 2019 at 4:52 PM Alberto Bursi 
> <bobafetthotmail@gmail.com <mailto:bobafetthotmail@gmail.com>> wrote:
>
>
>     Last attempt I saw was here
>     https://github.com/openwrt/openwrt/pull/1770
>
>     but it was rejected.
>
>
>     I have some experience with the bootloader used in this device, I can
>
>     provide more complete instructions to do the uboot fix though.
>
>     TTL/serial access seems to be easy (there is a header as you see
>     in the photo),
>
>     and you need an inexpensive "arduino USB-TTL dongle" to connect to
>     this device.
>
>     Connect the pins as defined in the wiki, open up your serial
>
>     communication program (Putty usually)
>
>     and set it for 115200 serial speed, others default.
>
>     Then boot the device, press a key to stop boot when you see
>
>     "Hit any key to stop autoboot: 2 1 0"
>
>     It should stop and accept console commands.
>
>     then copy-paste this line
>
>     setenv sleep 1;nmrp;sf probe 0:3;sf read $loadaddr 0x30000
>     0x400000;bootm $loadaddr
>
>     This will alter the bootloader configuration that is causing the
>     issue. Now it will boot kernels up to 4MB big
>
>     Will still be able to boot stock firmware, we are just increasing
>     a size limit.
>
>     and then save the change by writing
>
>     saveenv
>
>     and then you can reboot the device by pulling the plug or writing
>
>     reset
>
>     Now you can install OpenWrt as normal.
>
>     -Alberto
>
>
>     On 28/05/19 14:00, Chris wrote:
>>     Hi folks,
>>
>>     I was wondering if a patch enabling this device was ever released?
>>
>>     http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html
>>
>>     The wiki suggests one can only install/boot into OpenWRT by
>>     wiring up a JTAG/serial interface and manually intervene... Which
>>     is far beyond my comfort zone.
>>
>>     Am very eagar to make use of this equipment, so any news would be
>>     really appreciated.
>>
>>     All the best,
>>     Chris
>>
>>     _______________________________________________
>>     openwrt-devel mailing list
>>     openwrt-devel@lists.openwrt.org  <mailto:openwrt-devel@lists.openwrt.org>
>>     https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>     _______________________________________________
>     openwrt-devel mailing list
>     openwrt-devel@lists.openwrt.org
>     <mailto:openwrt-devel@lists.openwrt.org>
>     https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--------------B45A806D4F3359E4587B3BE1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>It's not an Arduino, it's a USB dongle to communicate with
      Arduino</p>
    <p>(and any other embedded device's) TTL serial pins.</p>
    <p>Search for "arduino USB-TTL dongle" on ebay or amazon to find
      this tool.</p>
    <p>-Alberto<br>
    </p>
    <div class="moz-cite-prefix">On 02/06/19 17:39, Chris wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANDHWrdHtN7qf7YYpsE2M2mYKsjFVj7Hf0Av4DbZmpfmtkJXfg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi Alberto,</div>
        <div><br>
        </div>
        <div>Thanks for explaining the situation to me. I'll get hold of
          an Arduino and give this a shot.</div>
        <div><br>
        </div>
        <div>All the best,</div>
        <div>Chris<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, May 28, 2019 at 4:52
          PM Alberto Bursi &lt;<a
            href="mailto:bobafetthotmail@gmail.com"
            moz-do-not-send="true">bobafetthotmail@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <p><br>
            </p>
            <p>Last attempt I saw was here <a
                class="gmail-m_9040696186903701216moz-txt-link-freetext"
                href="https://github.com/openwrt/openwrt/pull/1770"
                target="_blank" moz-do-not-send="true">https://github.com/openwrt/openwrt/pull/1770</a></p>
            <p>but it was rejected.</p>
            <p><br>
            </p>
            <p>I have some experience with the bootloader used in this
              device, I can <br>
            </p>
            <p>provide more complete instructions to do the uboot fix
              though.</p>
            <p>TTL/serial access seems to be easy (there is a header as
              you see in the photo),</p>
            <p>and you need an inexpensive "arduino USB-TTL dongle" to
              connect to this device.<br>
            </p>
            <p>Connect the pins as defined in the wiki, open up your
              serial <br>
            </p>
            <p>communication program (Putty usually)</p>
            <p>and set it for 115200 serial speed, others default.<br>
            </p>
            <p>Then boot the device, press a key to stop boot when you
              see <br>
            </p>
            <p>"Hit any key to stop autoboot: 2 1 0"</p>
            <p>It should stop and accept console commands.<br>
            </p>
            <p> then copy-paste this line <br>
            </p>
            <p>setenv sleep 1;nmrp;sf probe 0:3;sf read $loadaddr
              0x30000 0x400000;bootm $loadaddr</p>
            <p>This will alter the bootloader configuration that is
              causing the issue. Now it will boot kernels up to 4MB big</p>
            <p>Will still be able to boot stock firmware, we are just
              increasing a size limit.<br>
            </p>
            <p>and then save the change by writing</p>
            <p>saveenv<br>
            </p>
            <p>and then you can reboot the device by pulling the plug or
              writing<br>
            </p>
            <p>reset</p>
            <p>Now you can install OpenWrt as normal.<br>
            </p>
            <p>-Alberto<br>
            </p>
            <p><br>
            </p>
            <div class="gmail-m_9040696186903701216moz-cite-prefix">On
              28/05/19 14:00, Chris wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>Hi folks,</div>
                <div><br>
                </div>
                <div>I was wondering if a patch enabling this device was
                  ever released?</div>
                <div><br>
                </div>
                <div><a
href="http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html"
                    target="_blank" moz-do-not-send="true">http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html</a></div>
                <div><br>
                </div>
                <div>The wiki suggests one can only install/boot into
                  OpenWRT by wiring up a JTAG/serial interface and
                  manually intervene... Which is far beyond my comfort
                  zone.<br>
                </div>
                <div><br>
                </div>
                <div>Am very eagar to make use of this equipment, so any
                  news would be really appreciated.</div>
                <div><br>
                </div>
                <div>All the best,</div>
                <div>Chris<br>
                </div>
              </div>
              <br>
              <fieldset
                class="gmail-m_9040696186903701216mimeAttachmentHeader"></fieldset>
              <pre class="gmail-m_9040696186903701216moz-quote-pre">_______________________________________________
openwrt-devel mailing list
<a class="gmail-m_9040696186903701216moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org" target="_blank" moz-do-not-send="true">openwrt-devel@lists.openwrt.org</a>
<a class="gmail-m_9040696186903701216moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel" target="_blank" moz-do-not-send="true">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
            </blockquote>
          </div>
          _______________________________________________<br>
          openwrt-devel mailing list<br>
          <a href="mailto:openwrt-devel@lists.openwrt.org"
            target="_blank" moz-do-not-send="true">openwrt-devel@lists.openwrt.org</a><br>
          <a
            href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------B45A806D4F3359E4587B3BE1--


--===============0451420699174125920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0451420699174125920==--

