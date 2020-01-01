Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0187A12E056
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 21:08:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YJOpeTXezVU1rW2JxnhSXEBBPJHh4FRU4wMhwgNXDME=; b=rKRTUxWa+fQqxqmvrSA7RZAvMJ
	aqVK4+tGV8029acJNRezYFaV5cdeJryC6g/rbG4p8vzRsBUrEVsgWfN9zCczfsBnoscvW/SBxjZyK
	fv1j79rHHxZJPkF4FCzLApcb1oEYG7Qw6RYaDVPPd8u6cSwX5yMhTQbhfYvcSE1+PxAG9Q5qyB1EW
	dJ6Y34lQmvw2A703Y6IZgAR/xIe2shh9loyHlsgEEBYFKGk8VHfPtf/jQL+XJncxpGoQ3s4ave+gC
	6joXzSCro7XYuzgRR85yPzg+YXR2mCQT3V9RVG2jTIaGwt2xFJovrfbNwGjNzGBX7r/ETVqp1IMWV
	ruUyq8PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imkIU-0006zC-B6; Wed, 01 Jan 2020 20:08:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imkIJ-0006yJ-Li
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 20:08:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 610474F03;
 Wed,  1 Jan 2020 21:08:36 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 048dfc38;
 Wed, 1 Jan 2020 21:08:25 +0100 (CET)
Date: Wed, 1 Jan 2020 21:08:25 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20200101200825.GR70184@meh.true.cz>
References: <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_120839_859706_E2849FFE 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Hannu Nyman <hannu.nyman@welho.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMjAtMDEtMDEgMTg6MTM6MDZdOgoKPiA1YzZk
ZjJkZWYyYTFkMjYzMTNiNDVjYjQwZTIyNjhhMDhjNTlmMDAgLSBGQUlMUwo+IDQ2NTY3NmM4YjEy
NjE4ZWM5OTEyMmQwY2MxMjE3OTk0ZGU4ODQyODQgLSBXT1JLUwo+IDViZDEyNzYwZThmY2UwMjZm
ZDJhODJkNTZmN2IzYzhkZmYyN2UwOTYgLSBXT1JLUwo+IDhlMTk1YjMyNWE4NmI0ZGM5OWVlNWE5
ZWUwYjYzN2NmMjY2ZjlhMGEgLSBXT1JLUwoKTmljZSwgdGhhbmtzIGEgbG90IGZvciB5b3VyIGhl
bHAuCgo+IFRoZSBwcm9jZCBhZnRlciBmb3JraW5nIHRoZSB2YWxpZGF0ZV9maXJtd2FyZV9pbWFn
ZSBwcm9jZXNzIGRvZXMgdGhpcyBpbiB0aGUKPiBwYXJlbnQgKDEpIHByb2Nlc3MgKHVzaW5nIHN0
cmFjZSk6Cj4gCj4gY2xvbmUoY2hpbGRfc3RhY2s9TlVMTCwgZmxhZ3M9U0lHQ0hMRCkgID0gMTMw
Mwo+IHJ0X3NpZ3Byb2NtYXNrKFNJR19TRVRNQVNLLCBbXSwgTlVMTCwgOCkgPSAwCj4gY2xvc2Uo
MTApICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgID0gMAo+IHJlYWQoOSwgMHg3ZmZmNWQx
NDIwLCA2NCkgICAgICAgICAgICAgICA9ID8gRVJFU1RBUlRTWVMgKFRvIGJlIHJlc3RhcnRlZCBp
ZiBTQV9SRVNUQVJUIGlzIHNldCkKPiAtLS0gU0lHQ0hMRCB7c2lfc2lnbm89U0lHQ0hMRCwgc2lf
Y29kZT1DTERfRVhJVEVELCBzaV9waWQ9MTM3Miwgc2lfdWlkPTAsIHNpX3N0YXR1cz0xLCBzaV91
dGltZT0xLCBzaV9zdGltZT0wfSDigJQKPiB3cml0ZSg2LCAidyIsIDEpICAgICAgICAgICAgICAg
ICAgICAgICAgPSAxCj4gcnRfc2lncmV0dXJuKHttYXNrPVtdfSkgICAgICAgICAgICAgICAgID0g
LTEgRUlOVFIgKEludGVycnVwdGVkIHN5c3RlbSBjYWxsKQo+IGNsb3NlKDkpCgpZZXAsIGJ1dCB0
aGlzIEVJTlRSIGxlYWRzIHRvIHRoZSAiRmFpbGVkIHRvIHBhcnNlIEpTT046IDQiIHdoaWNoIHdh
cyBtaXNzaW5nCmluIHlvdXIgbG9ncywgc28gSSB3YXMgY29uZnVzZWQuIFRoZW4gSSBzYXcgYENv
bm5lY3Rpb24gdG8gMTcyLjMwLjMxLjIzMwpjbG9zZWQgYnkgcmVtb3RlIGhvc3QuYCBpbiBvbmUg
b2YgeW91ciBsYXRlc3QgbG9ncyBhbmQgSSd2ZSByZWFsaXplZCwgdGhhdAp5b3UncmUgbm90IGFi
bGUgdG8gc2VlIHRob3NlIG1lc3NhZ2VzIGFjdHVhbGx5IGFzIHRob3NlIGFyZSBvbmx5IHZpc2li
bGUgb24KdGhlIHNlcmlhbCBjb25zb2xlLi4uCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
