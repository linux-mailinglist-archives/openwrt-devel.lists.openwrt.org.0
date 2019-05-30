Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7138D2FEF8
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 17:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDCKz2ptqN0giCI1+ESZyLykeYpEqSrfLD21R4tGBaQ=; b=tBkKnlZJjQ5OY5
	fZOO97zhdPA4li5QgmMxs6otC7Veztb0qRMuDs+nM5nMGrEOX9UA5ja57RRDIXj1R0mVyakFN4KkY
	6/czMCH3WVbNipL9Ib9xGuSUVEpblfJW+L2fKcGaOYDo1upHt89tB+CM6o9jnebo8gC8wvZxWtqxn
	P7QoIZF6LFqCuGVyLlvf0Y+jCQGskS3bkEqyU7ngHG9TzZ43bWwp7tXL095m9hnbBTQhjJA9ZHLQS
	E8Ap+6KlR1NW6UJFC7FxgptYrttfVrzwamTm6rlbIRIHIgNXa7Kqay1zPO6Vn28fHdgl7Y2n95sSK
	LSt9lsTIvFWJi1Zk/h8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMgA-0007t7-F2; Thu, 30 May 2019 15:09:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMg4-0007sd-0z
 for openwrt-devel@lists.openwrt.org; Thu, 30 May 2019 15:09:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id v22so4049801wml.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 May 2019 08:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h05uJprQM5n7MCI5pgNlxhvzqVD0gaejYDbwSJ3zFYw=;
 b=bH3tjgVfr9HL9lzscQIxP9Dfd4Z9p+5q0tEAY9NsO+EVVD2maOzMyovdfP6jegM1Om
 mVZoa5ATI1yYOmWbyhG7dIBj0nCjHvERWEYt5uYNoMMtOUmDbzfJLofWr0TzWO/dj7w1
 yHyH5CPTHlOvFvb0+Y9MIKm3TAsZ2wdqMtQaDaMWCu+FOGO16gyVJ0MpBQKT56lv5H3w
 EwPcjDjR9hW/X5Q27RcYgf4Eea4eVmGLGslrofLOLnZc5kRgtpZXv23eM4KmxiDNYdwu
 xtWgUvm2jkqYhWmy4WrTsL8DFfh+L5B9/f4n0mXXbLagAOPWKsR9y24XrjPOiYkeM7ne
 HuhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h05uJprQM5n7MCI5pgNlxhvzqVD0gaejYDbwSJ3zFYw=;
 b=XdUU5tJZ881AjJ5i7p7WWJsX7XOO2gzzFlf5RF0AOqhZpy3KLB6UBFIGFf87c/Rf+U
 1JAlBsiKbO+cRM2w8vnCT3GmuYhyNYfO3DK4Gmf3nqXdIT8lAn6ts2RnTYuxmzWRgrqW
 fY+tfVWi0GwVJOZF8P+OZCLV8C0MMHe7nMJeU4CuylsshZNuja8YtlHGhqSeIDLVuRc3
 vVKRD2lFg7Ju2DCRoIlrGmRTSTV2CA3CqdI7VwgzxA9tK+1DpaemIAcoeW6LRc1d1oN4
 NWu70KL/u0cFJOx6CLUekO+2znb19oZz0LajJo3IHMm7iC2oJNcOdOXrHmHHFwU1+GV8
 04Fg==
X-Gm-Message-State: APjAAAUjIqhRKdcRLkfOWKESJlwFe/P7g93IoKwSnUqpCNXYIbUof7Zy
 YmiY0MA0BLbzNg7g5WNf+bE=
X-Google-Smtp-Source: APXvYqxn4p7xvLaNjMH5Pf+xSTa1r9qhD7KEwHulkVLFmEduV9szOI8vNICr/yHVwpMDpRRuvPDpdw==
X-Received: by 2002:a1c:7e10:: with SMTP id z16mr2628502wmc.98.1559228949784; 
 Thu, 30 May 2019 08:09:09 -0700 (PDT)
Received: from debian64.daheim (pD9E29DF8.dip0.t-ipconnect.de.
 [217.226.157.248])
 by smtp.gmail.com with ESMTPSA id r9sm3406876wrq.0.2019.05.30.08.09.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 30 May 2019 08:09:08 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hWMg0-0004a1-B4; Thu, 30 May 2019 17:09:08 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Date: Thu, 30 May 2019 17:09:08 +0200
Message-ID: <2839502.UJiEac7TxE@debian64>
In-Reply-To: <20190530100027.GE13432@meh.true.cz>
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_080912_091787_5F4E4237 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] gpio-button-hotplug: support
 interrupt properties
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpPbiBUaHVyc2RheSwgTWF5IDMwLCAyMDE5IDEyOjAwOjI3IFBNIENFU1QgUGV0ciDF
oHRldGlhciB3cm90ZToKPiBDaHJpc3RpYW4gTGFtcGFydGVyIDxjaHVua2VleUBnbWFpbC5jb20+
IFsyMDE5LTA1LTI5IDIxOjU4OjI5XToKPiA+IFVwc3RyZWFtIExpbnV4J3MgaW5wdXQgZ3Bpby1r
ZXlzIGRyaXZlciBzdXBwb3J0cwo+ID4gc3BlY2lmeWluZyBhIGV4dGVybmFsIGludGVycnVwdCBm
b3IgYSBncGlvIHZpYSB0aGUKPiA+ICdpbnRlcnJ1cHRzJyBwcm9wZXJ0aWVzIGFzIHdlbGwgYXMg
aGF2aW5nIHN1cHBvcnQKPiA+IGZvciBzb2Z0d2FyZSBkZWJvdW5jZS4KPiAKPiBbLi4uXQo+IAo+
IEkndmUganVzdCBjaGVja2VkIHRoaXMgb24gYXRoNzkgKGFyY2hlci1jNy12NSkgYW5kIG9uIHJh
bWlwcy9tdDc2MjAKPiAoYmRjb20sd2FwMjEwMC1zaykgd2l0aCBXUFMgYnV0dG9ucy4KPgo+IEFj
a2VkLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgoKQ2FuIHlvdSB0ZWxsIG1lIHdo
YXQgeW91IHRlc3RlZD8gV2FzIGl0IHRoZSBzb2Z0d2FyZSBkZWJvdW5jZT8KQmVjYXVzZSB0aGlz
IHNob3VsZCBiZSB0aGUgb25seSBiaXQgdGhhdCB3aWxsIGFmZmVjdCB0aGUgYXRoNzkKcGxhdGZv
cm0gSSB0aGluayAoc2luY2UgaXQgYWxyZWFkeSBoYXMgc3VwcG9ydCBmb3IgaW50ZXJydXB0cwp0
aHJvdWdoIHRoZSBncGlvIGNvbnRyb2xsZXIpLgoKRnJvbSB3aGF0IEkgY2FuIHRlbGwsIHJhbWlw
cyBzaG91bGQgdXNlIGdwaW8ta2V5cy1wb2xsZWQgZXhjbHVzaXZseQpmb3Igbm93LiBUaGlzIGlz
IGJlY2F1c2UgdGhlIHJ0Mjg4MC1waW5tdXggZHJpdmVyIGRvZXNuJ3QgaW1wbGVtZW50CmFuZCBp
cnEgc3VwcG9ydCAodGhvdWdoIHNvbWUgb2YgdGhlIGNoaXBzIHNob3VsZCBzdXBwb3J0IGl0KS4K
YWxsIGdwaW8ta2V5cy1wb2xsZWQgc2hvdWxkIHdvcmsgYXMgYmVmb3JlLgogCkNoZWVycywKQ2hy
aXN0aWFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
