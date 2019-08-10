Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E310688D15
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 21:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bfKulTJ6TIcpyexGWvi+8aYFMJcYbFjNBMcDCV+sUa4=; b=lAl51kol5Tf5J86DwD3g25QXX
	AVUHFrbzp9ijswl3GGTmbHI5BwXHNrix3IrytLWsZowvJouEL+KiK/Hn2siG3px2mTWnUbr5mrnPY
	d9HEky8vmuCoSQao5P4gmi8BT54PQFdOYYtjotx2Qx0hoAaAcAgq6tns/2caGf587Zy/XaJ4qb/eP
	FAFyWPqs3awktZAgv1owpMjJxMAU9n9olm6jxeUEN1XRC5+p5TWKaKr1saLyj6rAFIv+j3uhlvcyq
	+LQ6SHKvcOMg0ss7LDAGBmz8mViKhrL0EzQLDvSmxmTvWy2zEEMFFYHkRde0nvhMGHkqaSOzZvlhe
	FTrF+wKRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwXLc-0007OD-1H; Sat, 10 Aug 2019 19:48:16 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwXLS-0007No-9z
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 19:48:07 +0000
Received: by mail-lj1-x229.google.com with SMTP id p17so95088556ljg.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 12:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=V5P9WJAp/SQrRcwL/kp8kVpKbw9sOY/v63Ua+2DRLzs=;
 b=vPmrlUVCkBczHj0+PMOxSlxAS0bmQcj0GE2s/sqGRss0NRYQGC8djtKkK5J75WMmi2
 PSC+WYpcAYa99QClKMapHO0hVDUGhG8hq29gxgPBfbaoTLd+VdkZS9rNp/5haabgn9qv
 lvmfjrvf4jcIjclOmiksmk5pKQo8ETjSEXrR2Y18PHMmP0JEmVxqltBHbo1B5TqBIkQb
 0WU7np/fBxPZigmuOj1MEN+qVHgbjkUShDwywgVk/kCN8ESXy1katWrSaBSKCvZe8buo
 D5CPnMUNGc633oADluaQeAAWFEw6swO1Uzev79RoBrVUJFD9kfg9txrLW44jNL8e9Zu2
 ZkIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=V5P9WJAp/SQrRcwL/kp8kVpKbw9sOY/v63Ua+2DRLzs=;
 b=LcCZyAJFiOF6v/sr92MwxAg9CrPEk0D+QNaF/V7TOl/pvrRwNev0MRIe0yyOyK78ZD
 5VnTed2c2/e7zdAcUzDK3cOk6EkKkqt8XQ4T6MTyvrLx3ZhQFyb8XijoiUG5WwzuHy05
 pHuozfUYwMRoV5X/ywP2iYT7dExxbsde0JDLBTObDpCvYjguNYIldNwjsGKIyQdJOMvE
 rJrwY2Vj44ffZPPCM+jCCMgNUD3p6ICLYafM+hCzqQdR28lRyr/A2mvvo4Q1KmCAA4Ox
 snBOdfRtZX3rD68rb0EO0jX9sw3oVLJo+IcrrQAMM84Whrz9xzp1Fhoi0TaHNZ/YhQ7L
 YrMw==
X-Gm-Message-State: APjAAAVb3sZzOdzVOvM01r6Z6ktU6GDEwH6yT0WxIl2E5BBw/IDEs4fh
 PmEQCF51CB5iHuAnmDb4i6F14cWh
X-Google-Smtp-Source: APXvYqx5gTgVM6of0Gizdotqp1W3HjjnHTmEUoaUiA4AWoeXc/qa3v733FWFe5xVCi35mIPUC2yZZw==
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr14933131ljb.211.1565466483289; 
 Sat, 10 Aug 2019 12:48:03 -0700 (PDT)
Received: from [10.0.0.11] (user-5-173-228-18.play-internet.pl. [5.173.228.18])
 by smtp.googlemail.com with ESMTPSA id e26sm20106664ljl.33.2019.08.10.12.48.02
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 10 Aug 2019 12:48:02 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.352.1908101628250.23494@localhost.localdomain>
From: Lech Perczak <lech.perczak@gmail.com>
Message-ID: <4fc1072b-22ae-3cd6-d592-dd8c757a6dd9@gmail.com>
Date: Sat, 10 Aug 2019 21:47:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.21.99999.352.1908101628250.23494@localhost.localdomain>
Content-Language: pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_124806_348941_5109EEAB 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lech.perczak[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Has OpenWrt suport for Powerline devices
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
Content-Type: multipart/mixed; boundary="===============8371738395125669929=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============8371738395125669929==
Content-Type: multipart/alternative;
 boundary="------------9135C26CC5AE244D64823564"
Content-Language: pl

This is a multi-part message in MIME format.
--------------9135C26CC5AE244D64823564
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

W dniu 2019-08-10 o 16:30, Enrico Mioso pisze:
> Hello!
> I guess this is in a case-by-case basis - I have a TP-Link RE450 which 
> is supported.
> I know there are also Wi-Fi-only devices, but don't think OpenWRt 
> supports any of them.
>
> I guess this happens also due to the amount of flash and RAM memory 
> those devices have.
>
> And - if you're going for the RE450, keep in mind it's u-boot doesn't 
> seem to have any recovery method, so soldering an UART right away 
> maybe a good option.
>
> Enrico
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
RE450 is Wifi-only.
There is actually one supported:

https://openwrt.org/toh/hwdata/tp-link/tp-link_tl-wpa8630

-- 
Pozdrawiam,
Lech Perczak


--------------9135C26CC5AE244D64823564
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">W dniu 2019-08-10 o 16:30, Enrico Mioso
      pisze:<br>
    </div>
    <blockquote type="cite"
cite="mid:alpine.LNX.2.21.99999.352.1908101628250.23494@localhost.localdomain"
id="mid_alpine_LNX_2_21_99999_352_1908101628250_23494_localhost_localdomain"
      class=" cite">Hello!
      <br>
      I guess this is in a case-by-case basis - I have a TP-Link RE450
      which is supported.
      <br>
      I know there are also Wi-Fi-only devices, but don't think OpenWRt
      supports any of them.
      <br>
      <br>
      I guess this happens also due to the amount of flash and RAM
      memory those devices have.
      <br>
      <br>
      And - if you're going for the RE450, keep in mind it's u-boot
      doesn't seem to have any recovery method, so soldering an UART
      right away maybe a good option.
      <br>
      <br>
      Enrico
      <br>
      <br>
      _______________________________________________
      <br>
      openwrt-devel mailing list
      <br>
      <a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
      <br>
      <a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
      <br>
      <br>
    </blockquote>
    <p>RE450 is Wifi-only.<br>
      There is actually one supported:<br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://openwrt.org/toh/hwdata/tp-link/tp-link_tl-wpa8630">https://openwrt.org/toh/hwdata/tp-link/tp-link_tl-wpa8630</a><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Pozdrawiam,
Lech Perczak
</pre>
  </body>
</html>

--------------9135C26CC5AE244D64823564--


--===============8371738395125669929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8371738395125669929==--

