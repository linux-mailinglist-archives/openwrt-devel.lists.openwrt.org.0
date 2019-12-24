Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BC712A414
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 21:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/jg7oo6hw7GmtxFa4WsT19u2k3mWRN0TPcS3Tap+bEg=; b=UMuJWPDMnWP23LyJcHAGqr8Jm
	m9Tg2po3di+FzNJX/fNeMqZupM9KSze55wLa03WaHm3/zYuGfnH8JrRs+ARr5lQjUm78Q+4S1OzJy
	EWpSx5XgciAw6ujym5tyR0xv2K0Q1BZ/585kekjhP+m1Haz8EPAiKxOdp61vXBj0+JaYDorhE6HK+
	wzGbuHZtfzZlQTV6aRB8rawJEH9SUG0etMUPGpRYLeXGpiPYh9C1PCgPsDfSnGMydulvUNXlAeArk
	eKY5MTWaLfN/ACzlsasi/471STBusIGjwXL4aS75XDk9CGdV2W8AZLbu4W4ny754Z5H5HbZyE4XLx
	iqDPq+x5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijqmF-0004dM-Mm; Tue, 24 Dec 2019 20:27:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijqm4-0004cm-Ur
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 20:27:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so3232207wmf.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 12:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=NmKO0o1tPmYRB0luPMQQVlDjt2kXJ+XtAfguAdHGEFM=;
 b=I0ZDKlDwF6+qcqLER7fBNHn+wRGt3FxGGAKRPwTQ/PvJFNOApJNohmB+y7/iC1e+eH
 PCEFRWNtaWxRlUH5K0tiH35zXDfqGXSr877kevtdiMly4J5yf3pDgpHrpO5YgQcFM7EY
 K1f/CB7Z5tVOalSXDl52qlSoD7JFKhR3XRfFnZU/d4Zq+J8VWdYJPit6A/p6k+gQs8Rx
 +dlepmwTn8tI25rwwTCgZXEv1mO8lJ8VfrVo94DVi4+UwgKTCNVFXLK6lkUx1aamsbFy
 SgZW4eo1/NaOStTU8+z1wQ2yq/455Rs0IK9fKTET4KKE6Ln8QdqvvPcg7coKMr9KxjXD
 qfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=NmKO0o1tPmYRB0luPMQQVlDjt2kXJ+XtAfguAdHGEFM=;
 b=YR+lk576Qt0+UrQiXckO+kghWYDo08jKfMmsUfXA+4ZcM19yIagC7s0EbCrgwCqgmW
 w0mylg0gLzwL7yFtOhmmkdWPN8WEmlEvSvKpYiW/VIsVTIg58Wj79kX40qDfWuEhWV0Q
 UMaSgNY327eILQuzlc6H67qwj7cNwS7BvBFVqIEpInNAZUwINvCOiAFTnXdZqcDaI6ub
 EFqIcrtP+NpGVF54GF6F7rj9H4C6Q9aHvuUFYRBBSR/0y+S2lHiVSm98W9OUlrkVWlO7
 8wlF21U/gnNj2DG4J5l8ouhNdURJO5uEhg8SRpilyf3VkuwIIMWKgYEsV20Zgc+ygQiR
 E/ZQ==
X-Gm-Message-State: APjAAAUPdcHib7bd3z3apKmC6qzzLATxgKfqcAupA/4f54kzET+AsQUN
 0bAXXMWZwLr28QZEF0BUt6J8+l2q
X-Google-Smtp-Source: APXvYqzPa7Y4oxh4cr3Xl/XpfK7hQDfalzLIV/sH4x6RyuuwWwPPBOu+Eg7FdY27PTuA34ASkKgFyQ==
X-Received: by 2002:a1c:9a52:: with SMTP id c79mr5553435wme.127.1577219242868; 
 Tue, 24 Dec 2019 12:27:22 -0800 (PST)
Received: from [10.0.2.128] (public-gprs232492.centertel.pl. [31.60.55.109])
 by smtp.googlemail.com with ESMTPSA id d8sm25299509wre.13.2019.12.24.12.27.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Dec 2019 12:27:22 -0800 (PST)
To: Paul Fertser <fercerpav@gmail.com>, openwrt-devel@lists.openwrt.org
References: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
 <20191224164820.14245-1-fercerpav@gmail.com>
 <82947a82-d7d0-7dc7-95ea-f3e623091d54@gmail.com>
 <20191224194709.GI11377@home.paul.comp>
From: Lech Perczak <lech.perczak@gmail.com>
Message-ID: <bb008c3d-eab0-2ca5-6a42-23c854e2c431@gmail.com>
Date: Tue, 24 Dec 2019 21:27:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191224194709.GI11377@home.paul.comp>
Content-Language: pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_122725_019857_BBFD919C 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lech.perczak[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: tp-link: use
 ath10k-ct-smallbuffers for 64 MiB devices
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCkFuc3dlcnMgaW5saW5lLgoKVyBkbml1IDIwMTktMTItMjQgb8KgMjA6NDcsIFBhdWwgRmVy
dHNlciBwaXN6ZToKPiBIaSBMZWNoLAo+Cj4gQW55IHJlYXNvbiB5b3Ugb21pdCB0aGUgbGlzdCBm
cm9tIENjPyBUaGlzIHdheSBub2JvZHkgYnV0IG1lIGlzIGdvaW5nCj4gdG8gY29tbWVudCBvbiB5
b3VyIG1lc3NhZ2UgYW5kIEknbSBvYnZpb3VzbHkgYmlhc2VkIDopCkp1c3QgZm9yZ290IHRvIHVz
ZSAicmVwbHkgdG8gYWxsIi4KPgo+IE9uIFR1ZSwgRGVjIDI0LCAyMDE5IGF0IDA4OjI2OjA5UE0g
KzAxMDAsIExlY2ggUGVyY3phayB3cm90ZToKPj4gSSB0aGluayB0aGF0IFRMLVdSOTAyQUMgdjEg
c2hvdWxkIGJlIGluY2x1ZGVkIGFzIHdlbGwsIGFzIGl0IGlzIDY0TSBkZXZpY2UKPj4gYW5kIEkg
YWxzbyBleHBlcmllbmNlZCBpc3N1ZXMgd2l0aCBhdGgxMGstY3Qgb24gaXQgd2hpbGUgcG9ydGlu
Zy4KPiBEZXZpY2UgbGlrZSB0aGF0IHJlcXVpcmVzIHRoZSB0d2Vhaywgbm8gZG91YnQuIEJ1dCBJ
J20gbm90IGZlZWxpbmcKPiBsaWtlIGdvaW5nIHRocm91Z2ggdGhlIHdob2xlIGFyNzF4eCB0YXJn
ZXQgc2luY2UgaXQncyBkZXByZWNhdGVkCj4gYW55d2F5IGFuZCB3aG9ldmVyIGNhcmVzIHNob3Vs
ZCBwb3J0IHRoZSBuZWVkZWQgYm9hcmRzIHRvIGF0aDc5IEFGQUlLLgo+Cj4gU28gaWYgb25lIHN0
YXlzIG9uIGFyNzF4eCBmb3IgdGhlIHVwY29taW5nIHJlbGVhc2UgdGhlIHdvcmthcm91bmQKPiB3
b3VsZCBiZSB0byBtYW51YWxseSBydW4KPgo+IG9wa2cgcmVtb3ZlIGttb2QtYXRoMTBrLWN0ICYm
IG9wa2cgaW5zdGFsbCBrbW9kLWF0aDEway1jdC1zbWFsbGJ1ZmZlcnMKPgo+IFRoYXQgc2FpZCwg
SSBoYXZlIG5vIGlkZWEgaWYgcGF0Y2hlcyB0byBhcjcxeHggYXJlIGFjY2VwdGVkIG9yIG5vdC4K
PgpUaGlzIGRldmljZSB3YXMganVzdCBwb3J0ZWQgdG8gYXRoNzkgcmVjZW50bHkuCkkgdGhpbmsg
Z3JlcHBpbmcgYnkgZGV2aWNlIHRyZWVzIGNvdWxkIGJlIHVzZWQgdG8gZGV0ZXJtaW5lIGRldmlj
ZXMgCndoaWNoIG5lZWQgdGhlIGNoYW5nZXMuCgotLQpXaXRoIGtpbmQgcmVnYXJkcywKTGVjaAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
