Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90079116002
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 01:54:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Unk59arLjnhrPp8tfZEVFxcaywhmlYIv/Wk4ANnGz78=; b=MteViuCJCIcenJR94q7SpptJv
	vgqmARFuVXjeG90hWIE4KZeRH7D8K1NQplNol3bB2HFziyH38bow6J/X5s+QGfuGE9x8qkzVvb3yp
	SPkXwovtbXtbWWAbgQF24ES5bpRBmpWuq2L3eVZvzeUbfn1hl8jQPDtgNL1t2g5lyX83qci8p+hcG
	hdYEqiy5LmwvQHrlOcDVAN/addljs8qSnzlov6q3IGGdbjiqE87hSGRlLozwMUUWF/KFhceAzGiby
	sdKezlw3WxP0IcfIodgrFb/ZLTQbZyWAcCdKBvZgQFRmpjdOArMh2Ew5hDuBRBZs/acwMMwa0U370
	ll1Vuk//A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idkqF-0002lN-LQ; Sun, 08 Dec 2019 00:54:31 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idkq8-0002l1-MG
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 00:54:26 +0000
Received: by mail-lf1-x12c.google.com with SMTP id n12so8037981lfe.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec 2019 16:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=LF+Q6EqMVJfP5JgfNDzViWqzSkvCJIz249s6SopYxtE=;
 b=tY5DhFgWly8acBWh057WLhwTmulGQyJnb4l8qcWKn44Co2lAHnhM5h3COR3bAGn6OG
 zVQKrgGALcH04KHvwQF6aA6Um8ji45hCiU3KnaQH4hyIEdmIgR0bSR5I/MAcnrlzTfHf
 ZB5nS1I6L8qYvr5sxd+qtHrYwskemw6lfg4AeaO6ssD5UyoAIZFgFSci1qAEq7On1JwH
 9mvjd+DmITBWP8pPmAXjS7kca7RJTb3jArQgFRlvYECC6wEm/n3srr2HEsO++e1JRBND
 Z8drU5NTR/3Up0VGZbR/tEGOsrP7MZAPYxQRrj5iwmiIA9S6TfA872x17LyPLKkw8Qih
 q+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=LF+Q6EqMVJfP5JgfNDzViWqzSkvCJIz249s6SopYxtE=;
 b=BTfZAKd+gtWtMutWhCdXf0sVxv7nrf4jeVjbx6n2uamqKndlNV3jJF8LFiTbInEuK9
 B6h4JBBTF1RJxoTrRlDcqCsecaurHQp3MPJc2qKy/KFWOv7bH38wTLtEr8Q/9IN5hIsX
 7ojusHnx2hC3NGAGaB5Oj3XLT5Le3bLKexl0LNV6O8WKepGyGcctTel6wNcYFUkFujh/
 aiJMrXxMMOi4TKIzyF6pF4Er1myd2Ju5So0aGlxag3HDXIXkC51mL3yheLmmNJ/0coMa
 a1ivm6+U4QBv1r3Dngfly31HnnRYsJNa57XBUxQcQrd3XmYPVOVDm0vpUHNzLQtFHLRY
 UcNA==
X-Gm-Message-State: APjAAAV0+x8dY37r+ndN7+2nhblGBpEV/87eFiXtRDidcF03dfH2vqhV
 CFsnfNiv+seQPoTc0ziPxMI=
X-Google-Smtp-Source: APXvYqzui/iU2I0zCxEMf+G96KXrwBqdlzcO+aUFz4md0Cp7grA5QHYGyW4aHaUS+Ey+cPh9ZANMwA==
X-Received: by 2002:a19:f006:: with SMTP id p6mr11531462lfc.94.1575766462388; 
 Sat, 07 Dec 2019 16:54:22 -0800 (PST)
Received: from [10.0.0.21] (user-5-173-228-70.play-internet.pl. [5.173.228.70])
 by smtp.googlemail.com with ESMTPSA id j204sm193361lfj.38.2019.12.07.16.54.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Dec 2019 16:54:21 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
 <20191203143434.GF8181@meh.true.cz>
 <CAALvt2POG3isiKH+2aHjSGRoh-+HADtamD9O2VLOCKO=73byGw@mail.gmail.com>
 <20191205200036.GD71465@meh.true.cz>
 <CAALvt2NygyiyJ3iV82B3DXLr+hWsW_7T=iL=9=7xnyUHxD8UdA@mail.gmail.com>
From: Lech Perczak <lech.perczak@gmail.com>
Message-ID: <816257d6-01de-b064-88b2-38e2d9a3eca1@gmail.com>
Date: Sun, 8 Dec 2019 01:54:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAALvt2NygyiyJ3iV82B3DXLr+hWsW_7T=iL=9=7xnyUHxD8UdA@mail.gmail.com>
Content-Language: pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_165424_751573_51E66388 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lech.perczak[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] ath10k memory leak on 19.07 branch and mikrotik
 RB952Ui-5ac2nD?
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDIwMTktMTItMDYgb8KgMTg6NDQsIEpvZSBBeWVycyBwaXN6ZToKPj4KPj4+IFBvc3Np
Ymx5IHRoZSBzYW1lIHN5bXB0b21zIGRvbid0IGV4aXN0IG9uIDEyOE1CIFJBTSBkZXZpY2VzLgo+
PiBMaWtlIHRoZXJlIGlzIHNvbWUgaWYgY29uZGl0aW9uLCB3aGljaCBpcyBkb2luZyBzb21lIG5h
c3R5IHRoaW5ncyBvbiA2NE0KPj4gZGV2aWNlcz8gSSBhZG1pdCwgdGhhdCBJIGRvbid0IGhhdmUg
YXRoMTBrLWN0IHNvdXJjZSBjb2RlIHVuZGVyIG15IHBpbGxvdywgYnV0Cj4+IGl0IGRvZXNuJ3Qg
bWFrZSBtdWNoIHNlbnNlIHRvIG1lLgo+Pgo+Pj4gQ29tcGFyYWJsZSByZXN1bHRzIGJldHdlZW4g
YWJvdmUgYW5kIG15IDY0TUIgZGV2aWNlLiAgIEhvd2V2ZXIsIGlmIHRoZQo+Pj4gc2xlZXAgdGlt
ZSBpcyBleHRlbmRlZCB0aGUgY29uc3VtcHRpb24gaXMgbW9yZQo+PiBPaywgSSdsbCBsZXQgaXQg
cnVuIG92ZXJuaWdodCB3aXRoIDEyMHMgc2xlZXAgaW4gYmV0d2Vlbi4KPj4KPj4+IEkgc3VzcGVj
dCB0aGlzIGlzIG5vdCB0aGUgaW50ZW5kZWQgYmVoYXZpb3IuCj4+IE5vIGl0cyBub3QgYW5kIGl0
J3MgZXZlbiBzdHJhbmdlLCB0aGF0IEknbSBub3Qgc2VlaW5nIGl0IGhlcmUgaWYgaXQgc2hvdWxk
Cj4+IGhhcHBlbiBpbiB0aGUgImRlZmF1bHQgc2V0dXAiLiBNYXliZSBpdHMgYmVjYXVzZToKPj4K
Pj4gMS4gWW91J3JlIHVzaW5nIGN1c3RvbSBpbWFnZSAoSSdtIHVzaW5nIG9mZmljaWFsIHByZWJ1
aWx0IGltYWdlcykKPj4gMi4gWW91J3JlIG5vdCBwcm92aWRpbmcgYWxsIHRoZSBzdGVwcyBuZWVk
ZWQgdG8gcmVwcm9kdWNlIHRoZSBpc3N1ZQo+PiAzLiBJJ3ZlIHdheSBkaWZmZXJlbnQgaGFyZHdh
cmUKPj4KPj4gRXZlcnkgZGV0YWlsIGNvdWxkIG1ha2UgaHVnZSBkaWZmZXJlbmNlLgo+Pgo+PiAt
LSB5bmV6ego+IE9uIHRoZSBkZXZpY2UgSSBhbSB0ZXN0aW5nLCBpdCBpcyBib3RoICgyR0h6KSBh
dGg5ayBhbmQgKDVHSHopIGF0aDEway4KPiAgICBUaGVzZSBsb29rIHRvIGJlIHJlbGF0ZWQgcGF0
Y2hlcyB0byB0aGlzIGlzc3VlOgo+Cj4gOTYwLTAwMTAtYXRoMTBrLWxpbWl0LWh0dC1yeC1yaW5n
LXNpemUucGF0Y2gKPiA5NjAtMDAxMS1hdGgxMGstbGltaXQtcGNpLWJ1ZmZlci1zaXplLnBhdGNo
Cj4KPiBJbiB0aGUgdjE5LjA3LjAtcmMyIGJ1aWxkIGZvciB0aGUgcmItbm9yLWZsYXNoLTE2TS1h
YyBhcjcxeHggaW1hZ2UsCj4gdGhlc2UgcGF0Y2hlcyBhcmUgYXBwbGllZCB0byBiYWNrcG9ydHMt
NC4xOS44NS0xLCBidXQgZG9uJ3Qgc2VlbSB0byBiZQo+IGFwcGxpZWQgdG8gYXRoMTBrLWN0LTIw
MTktMDktMDktNWU4Y2Q4NmYuICAgIFNob3VsZCBhdGgxMGstY3QgaGF2ZQo+IHRoZXNlIGFuZCBv
dGhlciBwYXRjaGVzPyAgICBUaGUgZGV2aWNlJ3MgaW5zdGFsbGVkIHBhY2thZ2VzIGRvIGluY2x1
ZGUKPiBhdGgxMGstY3QgKGZyb20gZG93bmxvYWRzLm9wZW53cnQub3JnIGluc3RhbGxlZCBpbWFn
ZSkuCj4KPiBKb2UgQUU2WEUKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwKPiAuCgpJIGNhbiBvbmx5IGFkZCB0aGF0IEkgZ290IHRoZSBz
YW1lIGJlaGF2aW91ciB3aXRoIG15IFRMLVdSOTAyQUMganVzdCAKcG9ydGVkIHRvIGF0aDc5IG9u
IG1hc3RlciAoYmFzZWQgb24gCmYxOWU0NzFmMzIwNmQwYjU4ODU0OTBlNTI5NzIwODVkMmRhMmEx
MGIpLiBJbiBhYm91dCAyMCBtaW51dGVzIHN5c3RlbSAKd2FzIHVudXNhYmxlIC0gSSBjb3VsZG4n
dCBmdWxseSBjb3B5IGEgNE1CIHN5c3VwZ3JhZGUgaW1hZ2UgdG8gL3RtcC4KQnJhbmNoIHVzZWQg
dG8gYnVpbGQgdGhlIGltYWdlIGlzIGhlcmU6IApodHRwczovL2dpdGh1Yi5jb20vTGVvLVBML29w
ZW53cnQvY29tbWl0cy90bC13cjkwMmFjLXYxX2F0aDc5CgpJIGNhbiBvZmZlciBteSBoZWxwIHdp
dGggdGVzdGluZyB0aGUgZml4ZXMsIGFzIGl0IHNlZW1zIHRvIG1lIHRoYXQgaXQncyAKbm90IHRo
ZSBmaXJzdCB0aW1lIEkgb2JzZXJ2ZSB0aGlzIGlzc3VlLCBvbmx5IG5vdyBJIGdvdCBhIGRldmlj
ZSAKYWZmZWN0ZWQgYnkgaXQuCgpXaXRoIGtpbmQgcmVnYXJkcywKTGVjaAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
