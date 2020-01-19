Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB23141F44
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 18:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/2sTXPJGjrECSXrxRXNQZ+RYVOlR+q3Xo/oX9TW/rfM=; b=lYIJRSSyWDTGPMzVIEit4Easd
	017lVnsT8G+GMQEDd9lPwKmhe2njGqPqrgS7UVxhvBXC7fjY4ZES2R72//9u0h8DwHCQIMpGt4d/l
	n0UuZVx7V/XwZe0oRgXjJR3AMTba567iLUShu06/B9/aRCjtI3ygkyYn9IABz9wzjLWKhTP+5wfMV
	WzI9SXjBEJvozVdns9NQzl5qrft/npyb5IRp31dRpaY82RtB31thVnXeqpML7o/+mTKCNEN/Houfj
	phdK9uEWsMOapzid3iCyavYHmxlUtg8xo3qc5VCQ0JbOP2dDioteUOA1zhTN2eE6vZttitw4iwT20
	tGpMNlIFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itEoX-0000Zu-28; Sun, 19 Jan 2020 17:56:45 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itEoO-0000ZO-NK
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 17:56:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id 54D98BF72;
 Sun, 19 Jan 2020 19:56:34 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id q6n2H6k6TIEk; Sun, 19 Jan 2020 19:56:33 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id C09222316;
 Sun, 19 Jan 2020 19:56:30 +0200 (EET)
To: Hauke Mehrtens <hauke@hauke-m.de>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <20200116100514.GB84286@meh.true.cz>
 <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <faffc81b-b693-1b62-b821-07614bbc3ced@iki.fi>
Date: Sun, 19 Jan 2020 19:56:30 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101
 Thunderbird/73.0
MIME-Version: 1.0
In-Reply-To: <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_095636_926666_761C5D82 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGF1a2UgTWVocnRlbnMga2lyam9pdHRpIDE5LjEuMjAyMCBrbG8gMTkuMTc6Cj4gT24gMS8xNi8y
MCAxMTowNSBBTSwgUGV0ciDFoHRldGlhciB3cm90ZToKPgo+PiBCVFcgaXQncyBzdGlsbCBtYXN0
ZXIgKyAyIHN0YWJsZSByZWxlYXNlcyB3aGljaCB3aWxsIHJlY2VpdmUgdGhlIHN1cHBvcnQ/IE9u
Y2UKPj4gdGhlIDIwLnkgaXMgb3V0LCB0aGUgMTguMDYgaXMgRU9MPwo+IEkgdGhpbmsgdGhpcyBp
cyBub3QgcmVhbGx5IGNsYXJpZmllZCB5ZXQuIEkgYXNzdW1lIHRoYXQgMTUuMDUgYW5kIDE3LjAx
Cj4gYXJlIG5vdyBvZmZpY2lhbGx5IGZ1bGx5IGVuZCBvZiBsaWZlLiBJIGRvIG5vdCBrbm93IHdo
ZW4gd2UgcHV0IDE4LjA2Cj4gaW50byB0aGlzIG1vZGUsIGJ1dCBpdCB3aWxsIGRlZmluaXRlbHkg
Z2V0IGxlc3MgcGF0Y2hlcyBhZnRlciAxOS4wNyBpcwo+IG91dCwgYmVjYXVzZSBwZW9wbGUgY2Fy
ZSBub3cgbGVzcy4KPgo+IEkgYWRkZWQgc29tZSBzdXBwb3J0IHN0YXR1cyB0byB0aGlzIHdpa2kg
cGFnZToKPiBodHRwczovL29wZW53cnQub3JnL2RvY3MvZ3VpZGUtZGV2ZWxvcGVyL3NlY3VyaXR5
I3N1cHBvcnRfc3RhdHVzCj4gSSBob3BlIHRoaXMgaXMgb2ssIEkgcHV0IHNvbWUgbWluaW11bSBk
YXRlcyB0aGVyZSBhbmQgdGhleSBzaG91bGQgYmUKPiBleHRlbmRlZCBpZiB3ZSB0aGluayB3ZSB3
aWxsIHN1cHBvcnQgc29tZXRoaW5nIGxvbmdlci4gSSBhbSBmaW5lIHdpdGgKPiBjaGFuZ2VzLgo+
Cj4gSSB0aGluayB0aGUgbGF0ZXN0IHJlbGVhc2UgYnJhbmNoIGlzIGJldHRlciBzdXBwb3J0IHRo
YW4gdGhlIHByZXZpb3VzCj4gb25lLCBob3cgZG8gd2UgcGFyYXBocmFzZSB0aGlzPyBOYW1lIGl0
IGV4dGVuZGVkIHN1cHBvcnQgbGlrZSBzb21lCj4gY29tcGFuaWVzIGRvIGl0Pwo+CgpSZWZlcnJl
cmluZyB0byB0aGUgb2xkIGRpc2N1c3Npb25zIGluIDIwMTggKGJlbG93KSwgSSB0aGluayB0aGF0
IHRoZSBtb3N0IApyZWNlbnQgcmVsZWFzZSBicmFuY2ggc2hvdWxkIGJlICJmdWxseSBzdXBwb3J0
ZWQiIGFuZCB0aGUgcHJldmlvdXMgb25lIAooY3VycmVudGx5IDE4LjA2KSBjb3VsZCBiZSBzYWlk
IHRvICJyZWNlaXZlIHNlY3VyaXR5IHVwZGF0ZXMgYW5kIG9jY2FzaW9uYWwgCmJ1ZyBmaXhlcyIs
IGJ1dCBpdCBzaG91bGQgbm90IGJlIGNsYWltZWQgdG8gYmUgImZ1bGx5IHN1cHBvcnRlZCIgYW55
IG1vcmUuIApNYXliZSAic2VjdXJpdHkgbWFpbnRlbmFuY2UiID8/IFRoZXJlIHNpbXBseSBpc24n
dCBlbm91Z2ggaW50ZXJlc3QgZm9yIAphbmNpZW50IGJyYW5jaGVzLCB3aGVuIGV2ZW4gdGhlIG1v
c3QgcmVjZW50IGJyYW5jaCB0ZW5kcyB0byBiZSBtb3N0bHkgZG9ybWFudC4KClRoYXQgd2FzIG15
IHRha2UgZnJvbToKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL29wZW53cnQt
YWRtLzIwMTgtSnVseS8wMDA4NDkuaHRtbApodHRwOi8vbGlzdHMub3BlbndydC5vcmcvcGlwZXJt
YWlsL29wZW53cnQtZGV2ZWwvMjAxOC1TZXB0ZW1iZXIvMDE0MDk3Lmh0bWwKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9waXBlcm1haWwvb3BlbndydC1kZXZlbC8yMDE4LU5vdmVtYmVyLzAxNDUy
Ni5odG1sCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
