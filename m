Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA25115E69
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 21:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwCnxZfgwZTN+mGNK3elK2XzMimr9dOxejL88TsiEhA=; b=Sm+b+N1vuPJYo+
	F2GKvve3J95VKnRL3Zg7csMimr/wmTEw9ircQT+YrxaxLi8u5o3JQtazbP8OkkLE7liUWa5YLcBBQ
	dTfqBZ3D9hB7qWmYhmap/4BpNGlawr3cSS/GzTXNCb3+VBPxUOrYAi2vjlcRU3Mq/iesxLafKv1Ob
	IKbWr0iwV9PSqnRSLWZMPhtvQ4Iu9XDmKIWnxKl49CSe9UBhEoqwdswK13holMXb/KasmQCPSR+WY
	3JK8kP+Ypict3h1QHrLMPv3uaZobCM219eHYvShApt30THiM2ZCo4k2cDS4/pFeczGwJA5sWZoYLr
	purmWpx+sFAXSnLNddug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idgPI-000104-Ne; Sat, 07 Dec 2019 20:10:24 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idgPC-0000zi-5c
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 20:10:20 +0000
Received: by mail-lj1-x242.google.com with SMTP id r19so11320382ljg.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec 2019 12:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=8zIYids4jozsfhSC+dEGWPChr/D5YSZft8eAMfvsVKQ=;
 b=J8EdzUcz2Fe2U4AoDD4zvGbYkEFbpXIFGh2uIqPCWF7WORvozCUljx48veEbjkWgrY
 g2KojAZId+c5T+BHpFVxB0STl7emFG+P77CItNPjt8BLfPIvOJ62NHbl7ldgwby/eguh
 //3p92lXYUFLKcIZLED4RwISAMZjozgMtBQipjIhAmgLSvoZZgDIODzeSP3smFelcQhK
 zILZK2jnztrk1kzHiD73XyasLP++mPnGhyDWFURI6K3mnEI3TFlqmJC4VGEBFxtC8/dl
 X7e9DzU+ks4x0AuLj3MK5za6nvXWfKnJ19uwhzHmVl5cYCXi1RehFK+RSyUDu/wLuNHZ
 TGlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8zIYids4jozsfhSC+dEGWPChr/D5YSZft8eAMfvsVKQ=;
 b=CIYkuJeoVtSYwyqH0PuaMR/vFukUd18p3gW8PmxU/eTKN7cxIs07fpXjpRpYn9xxEn
 en4bYBC5Tx9Em3JSlEvBu4ZAT+5w4Ts3h9I8N4J86Vn6Oun9NBsUkD5HSRdgMvS3WUP8
 xI+VqXANZ9bWO0vZjvC8IOj9NYgu60z0KhSYW9EkAdRkNAyvrpQebyO2whC8i1/weOip
 C59Z+61FQp64PCupnGRQ2gJAyRm4S4FBRZdXLuTmIhV3r0HjOhr36mPxXxGz76Y5clrc
 DObBBKnAxxUtL0eAmLlcncjciRX2fc/puNZ3MaVKhPziR7SjKEgT062vOjSyaUCZR3Ww
 nINw==
X-Gm-Message-State: APjAAAWvgpYI4W8/Wa2jnmHOR5AuRiWbsGswvUtxZg67jlcyzr7+YUxW
 wVngLCGr7X6Ol97Or1S3rks=
X-Google-Smtp-Source: APXvYqwPl6sBzUf2swM6Vn0o+z4i8IRqUenlEcf3SuHSx2dNIQ28MIFpoqshkeePEkJdqVZhZBWu5A==
X-Received: by 2002:a2e:2e14:: with SMTP id u20mr12448419lju.120.1575749415793; 
 Sat, 07 Dec 2019 12:10:15 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id t27sm8727199ljd.26.2019.12.07.12.10.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 12:10:14 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xB7KACaR026472; Sat, 7 Dec 2019 23:10:12 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xB7KAC6T026471;
 Sat, 7 Dec 2019 23:10:12 +0300
Date: Sat, 7 Dec 2019 23:10:11 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20191207201011.GF11070@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
 <20191207140405.GE11070@home.paul.comp>
 <20191207150413.GF71465@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207150413.GF71465@meh.true.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_121018_238793_F5046A49 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCk9uIFNhdCwgRGVjIDA3LCAyMDE5IGF0IDA0OjA0OjEzUE0gKzAxMDAsIFBldHIg
xaB0ZXRpYXIgd3JvdGU6Cj4gPiBZb3UgY2hhbmdlZCB0aGUgc3RhdHVzIG9mIHRoZSBwYXRjaCB0
byAiQ2hhbmdlcyByZXF1ZXN0ZWQiIGJ1dCB5b3UKPiAKPiBJJ3ZlIG1hcmtlZCBpdCBhcyBzdWNo
LCBiZWNhdXNlIG9mIHRoYXQgZGlzY3Vzc2lvblsxXSwgYnV0IEkgYWRtaXQsIHRoYXQgSQo+IGRp
ZG4ndCByZWFkIGl0IHRob3JvdWdobHkuCgpPbmUgdGhpbmcgSSBmaW5kIGEgYml0IGFubm95aW5n
IGFib3V0IFBhdGNod29yayBpcyB0aGF0IHN0YXRlIGNoYW5nZXMKYXJlIGFub255bW91cyBhbmQg
c28gYSBjb21taXR0ZXIgbWlnaHQgZ2V0IGFuIG9kZCBmZWVsaW5nIHdoZW4Kc29tZXRoaW5nIGxp
a2UgdGhhdCBoYXBwZW5zLgoKUmVnYXJkaW5nIHRoaXMgc3BlY2lmaWMgcGF0Y2gsIEknZCByZWFs
bHkgbGlrZSB0byBoZWFyIHRoZSBvcGluaW9uIG9mCmEgbWFpbnRhaW5lciAoaXQgc2VlbXMgbGlr
ZSBhdGg3OSBkb2Vzbid0IGhhdmUgYW4gb2ZmaWNpYWwgbWFpbnRhaW5lcgp5ZXQpIGFzIHRoZXJl
J3JlIHNvbWUgaXNzdWVzIHJhaXNlZCBpbiB0aGUgZGlzY3Vzc2lvbiBmb3Igd2hpY2gKdGhlcmUn
cyBzdGlsbCBubyBjbGVhciBhbnN3ZXIuIEknbGwgYmUgaGFwcHkgdG8gY2hhbmdlIHRoZSBwYXRj
aCBpbgphbnkgd2F5IHRoYXQgd2lsbCBnZXQgaXQgYWNjZXB0ZWQuCgotLSAKQmUgZnJlZSwgdXNl
IGZyZWUgKGh0dHA6Ly93d3cuZ251Lm9yZy9waGlsb3NvcGh5L2ZyZWUtc3cuaHRtbCkgc29mdHdh
cmUhCm1haWx0bzpmZXJjZXJwYXZAZ21haWwuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
