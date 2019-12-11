Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737C911A997
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 12:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IympL1Jl0zPMGAsIXrG2kGbjfr6iXZhXauSfpeyxj0=; b=JLNg4k3s1VzYow
	NUdaeTxycNiFXwJXmOkSTByshgW2j/FzVqJZ2Ba/V/U3bIGRgb1a4QzIzJAn4J61BMxjN0MJIpoha
	3SNYsGlICU6kShpbFQX0as0fCidVlbxJweo9avzJrd4hoxnyq7iGvktYXbthAvEhqqudUcxrVAQut
	xFtx1S5cqKHHuSlwcOJB61LwDJ9YInYC31PRbEJWwbwuc8ghNr/TWG3NjZ2fCLCPtbDJpUtu4RwFz
	1bjHC6OcIrcEf/liiO5Rbtw0Oj05Wcp26OBRdMv6onObyp/JjcVL2XpHtTPg8QIP9dTrnRYuNq1bC
	aDvOup2/z7L4+3RNqXmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezmw-00085n-Tg; Wed, 11 Dec 2019 11:04:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezmk-0007mE-HD
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 11:04:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id u17so23556576lja.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 03:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=iBLiv9GBp5bk0zcsK75fQu5eAcE+nRyBsygubtVhpxk=;
 b=CweDQ8PbrODVHp9VTUdSbP0F4kbPWYrm1EMXqcIX0eJ0jKLX1z185/m285LrcB2vhh
 9UwmiZySy6zfoNOwkcxOej+uztQrxrar9tFUSoATyfv08GKtfVzNL4sB6tjAYw1XOtbB
 WMl5WY1nhUDKT0x7OoHYTMoAJE/Iv9XTKzNrpEk7x3FhwTZkdGBZtEx5hlPuC9LFryVI
 kXR2oryDUGPTV8AL8PUROw8lNS002amvUjCpm6cSeFHNYgFkoHDPmswHC5otUdsElu6m
 srn761SmKCYBhYtnBahBgryi5jfWQ5b93P0T8/NM8qr858C544ob4cycv3+jZu785l7n
 Apfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=iBLiv9GBp5bk0zcsK75fQu5eAcE+nRyBsygubtVhpxk=;
 b=DXhLzxoqUq9H9/Bhx2tNxKfxV5QQXLYVcaDqjJ77X436iso65BQ7QDUk1vLSP1JwXN
 P4GcFHR2BEjtEb4fEuYKw3OG3TQaDlZ4Z39kEOUDnRKTfWHIxbrEgGZvyTnqgVNQVNUX
 HCVSg5oOGzi4Y20ZEaD0jD++Oh/JqJUQx1ljJmfvQP3Rs0YSvoI3U5Nnnn6t/U/glfsZ
 mozfUePLAIeZ00HBjXjULwZ21yMyqD8WmJqcE9ZwG6XUOtsBbSJp0fhOgZP4sTGZCbWh
 naK7dRNcvMHKL/J4las/1r+whUS4owBlAAJrpXeMv1uyf/ESQU748ql9JShFeMhx51s9
 Qt5A==
X-Gm-Message-State: APjAAAXG6tjK7Upsbi2riCDB6hgUo7x8a27c81R4HVTSl8d1v3sJqZoP
 TKseeFnt1ClsBqzI12TO4+4=
X-Google-Smtp-Source: APXvYqzpZl4qoyZHOqVdEwQzn92NhI1xzRqH1i+zmUHTY78/KECmJcEOJ39FnmZWIOGAnNCB6+AdXQ==
X-Received: by 2002:a2e:859a:: with SMTP id b26mr1611509lji.137.1576062236730; 
 Wed, 11 Dec 2019 03:03:56 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id h14sm955143lfc.2.2019.12.11.03.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 03:03:56 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBBB3rHM010901; Wed, 11 Dec 2019 14:03:54 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBBB3rHX010900;
 Wed, 11 Dec 2019 14:03:53 +0300
Date: Wed, 11 Dec 2019 14:03:53 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20191211110352.GL11070@home.paul.comp>
References: <20191210142420.30748-1-fercerpav@gmail.com>
 <20191210144213.GH71465@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210144213.GH71465@meh.true.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_030402_589764_8D7AC2B6 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC][PATCH] base-files: send informational UDP
 message each second waiting
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

SGksCgpPbiBUdWUsIERlYyAxMCwgMjAxOSBhdCAwMzo0MjoxM1BNICswMTAwLCBQZXRyIMWgdGV0
aWFyIHdyb3RlOgo+IFBhdWwgRmVydHNlciA8ZmVyY2VycGF2QGdtYWlsLmNvbT4gWzIwMTktMTIt
MTAgMTc6MjQ6MjBdOgo+ID4gaW4gY2FzZXMgd2hlbiB0aGUgaW50ZXJmYWNlIGlzIGJyb3VnaHQg
dXAgZmFzdGVyIGl0IGxlYWRzIHRvIHR3byBtZXNzYWdlcwo+IAo+IGluIGNhc2VzIHdoZW4gdGhl
IGludGVyZmFjZSBpcyBicm91Z2h0IHVwIHNsb3dlciBpdCBsZWFkcyB0byBubyBtZXNzYWdlLgo+
IAo+IFRvIG1lIGl0IGp1c3Qgc2VlbXMgbGlrZSBhIHdvcmthcm91bmQgdG8gZml4IHlvdXIgdXNl
IGNhc2UsIG5vdCBhIHByb3BlciBmaXguCgpZb3UncmUgcmlnaHQsIEkgbWVudGlvbmVkICJpbmhl
cmVudGx5IHJhY3kiIGluIHRoZSBjb21taXQgbWVzc2FnZQpleGFjdGx5IGJlY2F1c2Ugb2YgdGhh
dC4KCldhaXRpbmcgZm9yIExPV0VSX1VQIHRoZXJlIHdpdGhvdXQgYSB0aW1lb3V0IGlzIG5vdCBh
IHNvbHV0aW9uIGJlY2F1c2UKaW4gdGhlIG5vcm1hbCBib290dXAgY2FzZSB0aGVyZSBtaWdodCBi
ZSBub3RoaW5nIGF0dGFjaGVkIHRvIHRoZSBMQU4Kc28gdGhlIGJvb3Qgd2lsbCBiZSBlZmZlY3Rp
dmVseSBoYWx0ZWQgZm9yZXZlci4gV2FpdGluZyB3aXRoIGEgdGltZW91dApwb3NlcyBhIHF1ZXN0
aW9uIG9mIHdoYXQgdGhhdCB0aW1lb3V0IHNob3VsZCBiZSBzZXQgdG87IGFuZCBpZiB0aGF0J3MK
cmVhc29uYWJsZSB0byBleHRlbmQgY3VycmVudCAyIHNlY29uZHMgd2l0aCBhbnkgc2lnbmlmaWNh
bnQgYW1vdW50LgoKQ3VycmVudCBkb2N1bWVudGF0aW9uIHNheXMgYSBtZXNzYWdlIHNob3VsZCBi
ZSBzZW50LiBDdXJyZW50IGNvZGUKd29ya3MgZm9yIHNvbWUgZGV2aWNlcyBhbmQgZmFpbHMgZm9y
IG90aGVyIGRldmljZXMuIE15IHBhdGNoIGltcHJvdmVzCnRoZSBzaXR1YXRpb24gd2l0aG91dCBh
ZGRpbmcgYW55IGNvZGUgY29tcGxleGl0eSAoaW5kZWVkLCBpdCdzIGV2ZW4KcmVtb3Zpbmcgb25l
IGxpbmUpIG9yIHdhc3RpbmcgYm9vdCB0aW1lLgoKRG8geW91IGhhdmUgYW55IG90aGVyIHBvc3Np
YmxlIHNvbHV0aW9uIGluIG1pbmQ/CgotLSAKQmUgZnJlZSwgdXNlIGZyZWUgKGh0dHA6Ly93d3cu
Z251Lm9yZy9waGlsb3NvcGh5L2ZyZWUtc3cuaHRtbCkgc29mdHdhcmUhCm1haWx0bzpmZXJjZXJw
YXZAZ21haWwuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
