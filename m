Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A061FB96DA
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 19:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ko4PNCT2I2qY393TTOja0bqFycYXtj10ohIj8fJCh3E=; b=tdfzk2MGrNVOfY
	xf80zAZnZlLoVwpLzh9uRAKezvGXiX4YPck8ue/bM6q6fU3WHI8SKi6PPBBWovHWuDplnqVxJerWq
	ZaEJmOlkswcqKoTaZXC3fYPVw2y1k9eiBkDc+tIB+80aSDS9HwzBxvq07w1fSzO3o01f1V5BZBQTb
	X6vGwOCJXWl5sgQ8nZdCqLcuieIHWwBiPhFJ59GO2W+ImbmRpyNRI3FGb3NYWSs6Jcks2dsVvhqOg
	9ZM1vcjJGoHPXNR1yew+Kqbx3mYMhzafwqhvmzihucFaQk0c9yKDSs6v2GXf3PUr8hpvB26DIF+pf
	bORB24tY/VJt1SZv7WFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBN9B-0007mb-Mb; Fri, 20 Sep 2019 17:56:45 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBN94-0007lZ-IR
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 17:56:40 +0000
Received: by mail-qt1-x844.google.com with SMTP id w14so5200747qto.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Sep 2019 10:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=xwXwb0VRr0Y5mbIrCdrhW15Qm4cGAzoeDVJ2lEpfOz8=;
 b=U3SmG6MqU1G3DvKMpMi11blBiYYiRG4IcOO9Awa0gS87SZtXwHxfRAO+oIJ9MK0/EA
 Y5Nsta25gV6EmMx5g/TCw3dF35cXtaZf4UJQ2ybwL38/fuf5L0gSLWl/pIgkAy/Tr/9W
 9lOEUdnL6ZM0CekQcwazwaVgejdB3SGe6ZWzCcI24li08Gqx59nLfW91oHIlP8XTnHGZ
 8rVb6AExkrDnCzj8p+HKIxY250lw4QXE+FgqHm2qbRqX/YbEWhYwnNj0plotZ8P4mjFL
 YVQUH4FOhow4YLVAXaWBn0aBFQjADYeLIIcVijsmpWz5SUH2FgLmopUo3+6vwdV+rEDp
 IaDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=xwXwb0VRr0Y5mbIrCdrhW15Qm4cGAzoeDVJ2lEpfOz8=;
 b=D2BrRURpgCUqBQuZq0wpmBh3/g9IxzmKVFZYwURaxRG4f8rDoa8jq3/MQLjxHJfjde
 DrgCp93DaeRa1z2abjYs4nalpB18+Dg3IjuvIhDlhT4CtCB+QnGeqIJsKhCE93LHrccK
 1QyGC9LfuonNd9MpB1+zH6/PgGsThdgojvIRCPtswxOkFsHq1CXiyQUkwCdx/9ZfQBdx
 bNeRazVu5j23Wd3Yzp9E/e+rOmSnkISmuNN+FsRZVg7skrcoP/+hza+Q+8FH2Q7sFi8r
 Sj479WdTT1MnyHcczpHxqVJdwrUz0TZ/RKaxRJiGzXrpugAKIlL58VW58VztwIzmwTwi
 tjOQ==
X-Gm-Message-State: APjAAAXxCQhw7ZAGDDi0Yacv913j5y05czEy6Tio5N4RXCMVAy2k2h0/
 RCdv4M9nv7CWzpKR/i07pukFIw==
X-Google-Smtp-Source: APXvYqzUx+S3hfpDDdk07qdwvak3LptBgH6Z52kWxHyuo6TSEFqvvIY8MMZv6cgKWhdxOKPG8VCRTg==
X-Received: by 2002:ac8:3fd2:: with SMTP id v18mr4595140qtk.73.1569002197003; 
 Fri, 20 Sep 2019 10:56:37 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id e42sm1322992qte.26.2019.09.20.10.56.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 10:56:36 -0700 (PDT)
Date: Fri, 20 Sep 2019 10:56:31 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Johannes Berg
 <johannes@sipsolutions.net>
Message-ID: <20190920105631.34f10d79@cakuba.netronome.com>
In-Reply-To: <20190920133708.15313-1-zajec5@gmail.com>
References: <20190920133708.15313-1-zajec5@gmail.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_105638_656065_A43B5A45 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH RFC] cfg80211: add new command for
 reporting wiphy crashes
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
Cc: hostap@lists.infradead.org, Jouni Malinen <j@w1.fi>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 openwrt-devel@lists.openwrt.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCAyMCBTZXAgMjAxOSAxNTozNzowOCArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIHdyb3Rl
Ogo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBIYXJkd2Fy
ZSBvciBmaXJtd2FyZSBpbnN0YWJpbGl0eSBtYXkgcmVzdWx0IGluIHVudXNhYmxlIHdpcGh5LiBJ
biBzdWNoCj4gY2FzZXMgdXN1YWxseSBhIGhhcmR3YXJlIHJlc2V0IGlzIG5lZWRlZC4gVG8gYWxs
b3cgYSBmdWxsIHJlY292ZXJ5Cj4ga2VybmVsIGhhcyB0byBpbmRpY2F0ZSBwcm9ibGVtIHRvIHRo
ZSB1c2VyIHNwYWNlLgo+IAo+IFRoaXMgbmV3IG5sODAyMTEgY29tbWFuZCBsZXRzIHVzZXIgc3Bh
Y2Uga25vd24gd2lwaHkgaGFzIGNyYXNoZWQgYW5kIGhhcwo+IGJlZW4ganVzdCByZWNvdmVyZWQu
IFdoZW4gYXBwbGljYWJsZSBpdCBzaG91bGQgcmVzdWx0IGluIHN1cHBsaWNhbnQgb3IKPiBhdXRo
ZW50aWNhdG9yIHJlY29uZmlndXJpbmcgYWxsIGludGVyZmFjZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IC0tLQo+IEknZCBsaWtlIHRv
IHVzZSB0aGlzIG5ldyBjZmc4MDIxMV9jcmFzaF9yZXBvcnQoKSBpbiBicmNtZm1hYyBhZnRlciBh
Cj4gc3VjY2Vzc2Z1bCByZWNvdmVyeSBmcm9tIGEgRnVsbE1BQyBmaXJtd2FyZSBjcmFzaC4KPiAK
PiBMYXRlciBvbiBJJ2QgbGlrZSB0byBtb2RpZnkgaG9zdGFwZCB0byByZWNvbmZpZ3VyZSB3aXBo
eSB1c2luZyBhCj4gcHJldmlvdXNseSB1c2VkIHNldHVwLgo+IAo+IEknbSBPcGVuV3J0IGRldmVs
b3BlciAmIHVzZXIgYW5kIEkgZ290IGFubm95ZWQgYnkgbXkgZGV2aWNlcyBub3QgYXV0bwo+IHJl
Y292ZXJpbmcgYWZ0ZXIgdmFyaW91cyBmYWlsdXJlcy4gVGhlcmUgYXJlIHRoaW5ncyBJIGNhbm5v
dCBmaXggKGh3Cj4gZmFpbHVyZXMgb3IgY2xvc2VkIGZ3IGNyYXNoZXMpIGJ1dCBJIHN0aWxsIGV4
cGVjdCBteSBkZXZpY2VzIHRvIGdldAo+IGJhY2sgdG8gb3BlcmF0aW9uYWwgc3RhdGUgYXMgc29v
biBhcyBwb3NzaWJsZSBvbiB0aGVpciBvd24uCgpQZXJoYXBzIGEgc2xpZ2h0bHkgbGFyZ2VyIHBv
aW50LCBidXQgSSB0aGluayBpdCBzaG91bGQgYmUgcmFpc2VkIC0gCmlzIHRoZXJlIGFueSBjaGFu
Y2UgZm9yIHJldXNpbmcgZGVidWdnaW5nLCByZXNldCBhbmQgcmVjb3Zlcnkgd29yayBkb25lCmlu
IGRldmxpbmsgb3JpZ2luYWxseSBmb3IgY29tcGxleCBFdGhlcm5ldCBkZXZpY2VzPwoKV2lGaSBk
cml2ZXJzIGhhdmUgYmVlbiBkZWFsaW5nIHdpdGggbW9yZSBjb21wbGV4L0ZXIGhlYXZ5IGRlc2ln
bnMgZm9yIGEKd2hpbGUgc28gbWF5YmUgeW91J3ZlIGdyb3cgeW91ciBvd24gaW50ZXJmYWNlcywg
YW5kIG1heWJlIHRoZXkKbmVjZXNzYXJpbHkgbmVlZCB0byBiZSA4MDIuMTEtY2VudHJpYywgYnV0
IEknbSBhIGxpdHRsZSBzdXJwcmlzZWQgdGhhdDoKCmxpbnV4ICQgZ2l0IGdyZXAgZGV2bGluayAt
LSBkcml2ZXJzL25ldC93aXJlbGVzcy8KbGludXggJAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
