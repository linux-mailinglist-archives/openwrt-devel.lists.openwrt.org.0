Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB0B1DF434
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 04:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bplXhAt9jRSmsngzjkIimalFIgo03cFwpge0Wj/N8l8=; b=koclvYyNl8ZM+1
	iS6V4EYzOZMhomwlj1/0W8O7/m/xdrl6GWDeoU6uXtYaOlPTS26NONA17IjgykK5yYVKzvXx1vGRw
	Tz9QCqdNQ3pMV9v3XMVDAB85Ps4F17LdMh8j05fvOZys3KAgUBDr1ouieIiGNseBWff16UECP7nni
	v4AUJbMYnjxui/1ZpsoMbuMGiPqBnVXDC73JeT2HciNo+3QaZBx8c/h1oFBKagYFtunGNc8LkiIiR
	R/g3YHtWuC72KsBoFdhad8IdgsZzViVOEF72REeRXb5E1V82yVC2XdmshhwH53KH83KGzVp5ej3uH
	xHzMoc1jwBnM6F0GMg3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcKE1-00031Q-Oe; Sat, 23 May 2020 02:49:25 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcKDt-000313-W5
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 02:49:20 +0000
Received: by mail-io1-xd36.google.com with SMTP id o5so13600142iow.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 19:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rOwqNbPq3ilRwGu/LuI4T9cFmqPEw/s/rTqyr34ryAU=;
 b=UNsen077lXpwy/DOGmLTLK7uQweLdQmC9AOMUuvbSVAG9KtLe54+CoCM17HoYtmd9a
 VoOeWAV6R65okAePG3XfsDhOpC84YZiO0df1qrbM8nB/BLJqKXdnbWwHzklx3ruVjFqm
 j44MqDy9dcDWU9VEPNowjHBr1VftlOd5H6QsENqk6nVbDkqDtBy8iIUPTT9CBcmJiJD5
 557hNZ+VGI4lCi3J34QRsCp7WvijYBMCF+J89tI+Qd5GPRAD8ePLTVEHyILydn1K01Wo
 bZsRBSjG7udcRKpdnvYPbJR8dJ2DwT22H7aK6ERe2vEYK8Fm2sEollo/oxywT2+Ehvbo
 RpdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rOwqNbPq3ilRwGu/LuI4T9cFmqPEw/s/rTqyr34ryAU=;
 b=NHPq1RycUS1CXYtaCv0Th0MSZXRIMODLT6ZVD6cHD9U42Kal8wx6dW9m8u2NMHfijM
 nw1VvO78A66WVDFBaWu7fKzL9wAZu70DwXA6bOYeylCxuWgpS++g/uTBVP/HaCXBQUkg
 9tnBOFt2P9H0rFOP/ni3iwtIj2Q0IL34n0frxxo2Y/0Y/4pMnuYqpD3im/VDTgxT0JKt
 tyN0AyDZeuSA0bimbsQd5LGQKODeXT+5LGn6brDoOpkp1Jt4HWL2h/7j0iT41K+pcIMX
 2qdCrAe7UnA0cOY9IVghJjrevsSNTGoVp5BDCKUyFShNBts8NXtsTZi0TrL3BlGRrUeC
 ab0g==
X-Gm-Message-State: AOAM530IMh8UbWAab/qy+CKDmQn24vQzmE0JuUQbSEjnM3aWqm0AtryO
 Kl+qKenDQhBNleSaj9ebQ4NQfbHnyOuqrvBc0gz9wWVskcrweA==
X-Google-Smtp-Source: ABdhPJwmMJllliKEgBQRL+3p1940KE1y/uVHaYzwKmWhOFn3F4yP8AM7f0TuGMigaRezieU+VbM9YRbj6vQ1ULp5C7Q=
X-Received: by 2002:a02:1c83:: with SMTP id
 c125mr10844916jac.112.1590202156156; 
 Fri, 22 May 2020 19:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120650.64ec263e@meshplusplus.com>
In-Reply-To: <20200522120650.64ec263e@meshplusplus.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sat, 23 May 2020 04:49:04 +0200
Message-ID: <CAAP7ucJXsnizLyikHXxoo2nn+t=nAumT-vKKzEW0bA9TO+ysAQ@mail.gmail.com>
To: Alex Ballmer <alexb@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_194918_057053_63C0137A 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d36 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Issue connecting with Quectel EM20-G modem on
 openwrt
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
Cc: "ModemManager \(development\)" <modemmanager-devel@lists.freedesktop.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey Alex

> I have been trying to add support for the Quectel EM20-G LTE modem on
> openwrt, using a similar method to how the support for the RM500Q modem
> was implemented. I made changes to the qmi_wwan driver using the
> attached patch (which also has backported changes for the RM500Q).
>

Not sure I've seen that RM500Q patch before, but the
QMI_QUIRK_QUECTEL_DYNCFG() looks equivalent to the
QMI_MATCH_FF_FF_FF() in linux git master, right? That is being
correctly used I believe, it shouldn't be an issue for the thing
you're seeing.

> I am currently using modemmanager master commit
> 1eeec40ee85552cee957f35db9cc85aae6116e48 on linux 4.14. I am running on
> openwrt 18.06.2.
>
> The modem is detected successfully by the kernel and libqmi.
> Modemmanager seems to detect the modem and sim fine, but the modem is
> always listed as "enabled", not "connected" and does not have a bearer.
>

If it's enabled, it means netifd enabled it. At this point, it is up
to the modem to get automatically registered to the network. What it
looks like is that it may not find any, the "serving system" info
reports "not-registered-searching" all the time when in LTE:

Fri May 22 16:31:06 2020 daemon.debug [2158]: [/dev/cdc-wdm0] received
generic response (translated)... <<<<<< QMUX: <<<<<<   length  = 66
<<<<<<   flags   = 0x80 <<<<<<   service = "nas" <<<<<<   client  = 3
<<<<<< QMI: <<<<<<   flags       = "response" <<<<<<   transaction = 9
<<<<<<   tlv_length  = 54 <<<<<<   message     = "Get Serving System"
(0x0024) <<<<<< TLV: <<<<<<   type       = "Result" (0x02) <<<<<<
length     = 4 <<<<<<   value      = 00:00:00:00 <<<<<<   translated =
SUCCESS <<<<<< TLV: <<<<<<   type       = "Serving System" (0x01)
<<<<<<   length     = 6 <<<<<<   value      = 02:02:02:02:01:08 <<<<<<
  translated = [ registration_state = 'not-registered-searching'
cs_attach_state = 'detached' ps_attach_state = 'detached'
selected_network = '3gpp' radio_interfaces = '{ [0] = 'lte '}' ]
<<<<<< TLV: <<<<<<   type       = "Roaming Indicator" (0x10) <<<<<<
length     = 1 <<<<<<   value      = 01 <<<<<<   translated = off
<<<<<< TLV: <<<<<<   type       = "Data Service

And it cannot fallback to 3G because it's getting a registration denied:

Fri May 22 16:31:42 2020 daemon.debug [2158]: [/dev/cdc-wdm0] received
generic indication (translated)... <<<<<< QMUX: <<<<<<   length  = 48
<<<<<<   flags   = 0x80 <<<<<<   service = "nas" <<<<<<   client  = 3
<<<<<< QMI: <<<<<<   flags       = "indication" <<<<<<   transaction =
10 <<<<<<   tlv_length  = 36 <<<<<<   message     = "Serving System"
(0x0024) <<<<<< TLV: <<<<<<   type       = "Serving System" (0x01)
<<<<<<   length     = 6 <<<<<<   value      = 03:02:02:02:01:05 <<<<<<
  translated = [ registration_state = 'registration-denied'
cs_attach_state = 'detached' ps_attach_state = 'detached'
selected_network = '3gpp' radio_interfaces = '{ [0] = 'umts '}' ]
<<<<<< TLV: <<<<<<   type       = "Roaming Indicator" (0x10) <<<<<<
length     = 1 <<<<<<   value      = 01 <<<<<<   translated = off
<<<<<< TLV: <<<<<<   type       = "Data Service Capability" (0x11)
<<<<<<   length     = 1 <<<<<<   value      = 00 <<<<<<   translated =
{} <<<<<< TLV: <<<<<<   type       = "Roaming Indic

> I attached the output from modemmanager using the --debug and
> --log-level=DEBUG flags, plus the patch I used to get qmi_wwan working.
>
> This might also be because of poor signal. I do not have physical
> access to the machine with the modem, and it may be having difficulty
> reaching the towers.
>

It does look like something like that could be happening. Is it just
far away from any network? Or antenna disconnected?

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
