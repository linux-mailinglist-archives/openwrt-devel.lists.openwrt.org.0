Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE0C3A804
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 18:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpahq4zvTS3gwCNF3ixMbo9nOwiQCydr0gDe+R1BgUU=; b=aZXko0U3AbULrQ
	pE/kgnakMlXexPqPFXbvoR5jR8N2IT/lUfb4M43fQIFmcYa1QIKrePyHyfBwMUHFxYXheQUT0tsWi
	S+viWsOJM4QFFskWF8+oqBzUrvaMWBsx21JbtMtVFa6c1DDoqAMZudt445BqUvUP8FMRYckJzEWuP
	133rJyDQKkZQg65TVL+O0XZ6b5XOTXA38MoCSFIAZmrJB5LPuPrmH3CnxnxMm1AtGwgL5QvBiR8hN
	YDjYHcaQXovw99dxxmHl0hjYhUlagbdG228cvqs8ocVt4X1+3F4XZqD2N39YOVFrA7FoNNsB6SHAy
	y1TnZCZgH6YLKSuo59NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha16u-00056S-RL; Sun, 09 Jun 2019 16:56:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha16i-000554-Rt
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 16:55:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so6777512wrm.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 09 Jun 2019 09:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rfyiFjJdI14wi5hA/IZwjUuRw0XiYWVd5tVaQXjP4ZA=;
 b=UzlepKLO8A2A3Idjs742uvRL2YpKQp8mlBrDtKIp8PA9JDsFxua428k87h/vrq9E3C
 EFiqoowVUAdX0xjSKjtIp5V0YmApTYt818eDO+E9HZJqYs7Vv6wFkk91hhcvHLNknSp/
 tu9rdktt10Bb4vrcU1E7wwv09UM/qfBLEPcgV/UGsoyM3/D/BZUrpQLkLHYPw+UQo5RX
 ltnCS/KnD99wKNz26mX9UAe3bJRB1F4pqjRNkHSFXTIb+cKpM6PhRbxBT+JSDVA73fhc
 3FUIlSQpChrx7C7qys0OWhr7zngWDZdls8jN4zl8WxUyUH42yIre6f6o0Zxt80KqhAuI
 j+hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rfyiFjJdI14wi5hA/IZwjUuRw0XiYWVd5tVaQXjP4ZA=;
 b=pg0NuePkDVNnOkC3KPS/yw8KufNH67MdUNXzLd+ahexGXwRfVUwlOeIKvHKWCItyKi
 IqiKwt481Lw7e+8JTEOUFH82wIGqxk3XarPXINUQl0uaUuhL1HGHHMFDSCziHrX1T4rv
 uDJyA8PrxEu9yAJ82eDXwr9Y82WU4kN6UgvYHBoZb5xGts+fw1vOTTdXVSVweTAR8n2L
 X9evAvg2xCTsYr0FLp51X4qjj0DwHg5uW6uV8fK41sA+lvGnnYhkpT+QCqD2rjBxqSEP
 J0tyWxDXvNBK4XdmitTJcSwlQFNasIfQtEBc9gTNr/I9qDyAXjBqlRNF9pLuVJo/Ul5S
 i8hA==
X-Gm-Message-State: APjAAAVBxmBcOAbZL9ziR6Z6a0MbuG1CrsZvNtxaUR2MVVrpMhmTs7gn
 1GmHGMl1i8TApb0Eom8Bvks=
X-Google-Smtp-Source: APXvYqyOl51yo9wpwJOKETcjoifJJlLDDadMTr9Sl7XGUx36WPxTgTbX7uDLT0lkuyxaeYoa8U7xDg==
X-Received: by 2002:adf:f544:: with SMTP id j4mr28464284wrp.150.1560099343492; 
 Sun, 09 Jun 2019 09:55:43 -0700 (PDT)
Received: from debian64.daheim (pD9E295B5.dip0.t-ipconnect.de.
 [217.226.149.181])
 by smtp.gmail.com with ESMTPSA id 11sm7757490wmd.23.2019.06.09.09.55.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 09:55:42 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1ha16b-0005yu-Gj; Sun, 09 Jun 2019 18:55:41 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Date: Sun, 09 Jun 2019 18:55:41 +0200
Message-ID: <1820895.CflQEl9MkD@debian64>
In-Reply-To: <20190609125041.GB39806@meh.true.cz>
References: <1559653541-26682-1-git-send-email-ynezz@true.cz>
 <9290831.qgf20FLg21@debian64> <20190609125041.GB39806@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_095548_927632_B1372297 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix
 always missing first event
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU3VuZGF5LCBKdW5lIDksIDIwMTkgMjo1MDo0MSBQTSBDRVNUIFBldHIgxaB0ZXRpYXIgd3Jv
dGU6Cj4gQ2hyaXN0aWFuIExhbXBhcnRlciA8Y2h1bmtlZXlAZ21haWwuY29tPiBbMjAxOS0wNi0w
OSAxMDowNjozM106Cj4gCj4gSGksCj4gCj4gPiBUaGUgQVBNODIxeHggY2hlY2tzIG91dCB3aXRo
IGJvdGggYXMgd2VsbC4gV2hpbGUgdGhlcmUgYXJlIHNwdXJpb3VzCj4gPiBldmVudHMgb24gZW5h
YmxpbmcgdGhlIGludGVycnVwdCAob25lIHJlbGVhc2VkIGV2ZW50KSwgCj4gPiB0aGUgL2V0Yy9y
Yy5idXR0b24vIHNjcmlwdHMgYXJlIHNldHVwIHRvIGhhbmRsZSB0aGF0LiBTbywgd2hpY2ggcGF0
Y2gKPiA+IHNob3VsZCB3ZSB0YWtlIGFuZCB3aG8gZ2V0cyB0aGUgbWVyZ2UgdGhlbT8gKEkndmUg
c2VlbiB0aGF0IHluZXp6IGhhcwo+ID4gbW9yZSBwYXRjaGVzIGFzIHdlbGwuKQo+IAo+IEkgdGhp
bmssIHRoYXQgeW91J3JlIGNvcnJlY3QgYW5kIHdlIHNob3VsZCBzdGljayB0byB0aGUgcHJldmlv
dXMgYmVoYXZpb3VyLCBzbwo+IEkndmUgdGFrZW4geW91ciB2ZXJzaW9uIG9mIHRoZSBwYXRjaCBp
bmNsdWRlZCBpbiB0aGlzIGVtYWlsIGFuZCB3aWxsIHB1c2ggaXQKPiB3aXRoIG15IG90aGVyIHBh
dGNoZXMuCj4gCj4gLS0geW5lenoKPiAKCk9rLCB0aGFua3MuCgpPVDogSW4gcmV0dXJuLCBJJ3Zl
IHBva2VkIGdyZWcgdG8gaW5jbHVkZTogCiJtdGQ6IHNwaW5hbmQ6IG1hY3Jvbml4OiBGaXggRUND
IFN0YXR1cyBSZWFkIiBpbnRvIDQuMTktc3RhYmxlCgp3aGljaCBoZSBkaWQ6CgpodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFibGUvc3RhYmxlLXF1ZXVl
LmdpdC9jb21taXQvP2lkPWFhMDdiNzcwMTU3YjFmMDI0YzgwN2I5MzhhNmY4MjI1ZjczZGZmMDQK
CkknbGwgc2VlIGlmIEkgY2FuIGdldCBtb3JlIHBhdGNoZXMgYmFja3BvcnRlZCB0aGlzIHdheS4K
CkNoZWVycywKQ2hyaXN0aWFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
