Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A85BF238
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 13:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJgYY+LScAi+qmWCNH2APAUq218HweEaUAWl7bYILBE=; b=kochkY/jhalghh
	Wjo/aMXcmBSjSBpV05w+HsBbv1mR+95s11zwdEKMXSIgDxM3eEnw7+8Lz8CFSxaXK8zS9A21yF4Bv
	0PUsmQDdSpozC7z/AFWWK45QYIabr91hi8Ks/w6CbVpyIfjcXjpTsChLt5MeqV+1MoGD1j/b2exPZ
	1MLuzlqe4qJJ2z1wHF7HBHvCA5O5osIuESwUOZEvpA3uvKHX66MRFfURkthf7Ks9UqME32f2Mu6eU
	oEsEV9tMa0BjYlsjRalIXPzsDYZ8JY6NgOIJOuBNucfPzyE/21Q436ZP2qa1UG747H9MP/FlJf+PR
	q2QzFI80nKrTnDM090Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSN4-0003yR-PA; Thu, 26 Sep 2019 11:55:42 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSMi-0003OU-5H; Thu, 26 Sep 2019 11:55:21 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iDSMU-0000Wn-4M; Thu, 26 Sep 2019 13:55:06 +0200
Message-ID: <9ece533700be8237699881312a99cc91c6a71d36.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, Jouni Malinen
 <j@w1.fi>, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 26 Sep 2019 13:55:04 +0200
In-Reply-To: <4f6f37e5-802c-4504-3dcb-c4a640d138bd@milecki.pl>
References: <20190920133708.15313-1-zajec5@gmail.com>
 <20190920140143.GA30514@w1.fi>
 <4f6f37e5-802c-4504-3dcb-c4a640d138bd@milecki.pl>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_045520_217510_7B55EB94 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: hostap@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 openwrt-devel@lists.openwrt.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCAyMDE5LTA5LTI2IGF0IDEzOjUyICswMjAwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6
Cj4gCj4gSW5kZWVkIG15IG1haW4gY29uY2VydCBpcyBBUCBtb2RlLiBJJ20gYWZyYWlkIHRoYXQg
Y2ZnODAyMTEgZG9lc24ndAo+IGNhY2hlIGFsbCBzZXR0aW5ncywgY29uc2lkZXIgZS5nLiBubDgw
MjExX3N0YXJ0X2FwKCkuIEl0IGJ1aWxkcwo+IHN0cnVjdCBjZmc4MDIxMV9hcF9zZXR0aW5ncyB1
c2luZyBpbmZvIGZyb20gbmw4MDIxMSBtZXNzYWdlIGFuZAo+IHBhc3NlcyBpdCB0byB0aGUgZHJp
dmVyIChyZGV2X3N0YXJ0X2FwKCkpLiBPbmNlIGl0J3MgZG9uZSBpdAo+IGNhY2hlcyBvbmx5IGEg
c21hbGwgc3Vic2V0IG9mIGFsbCBzZXR1cCBkYXRhLgo+IAo+IEluIG90aGVyIHdvcmRzIGRyaXZl
ciBkb2Vzbid0IGhhdmUgZW5vdWdoIGluZm8gdG8gcmVjb3ZlciBpbnRlcmZhY2VzCj4gc2V0dXAu
CgpTbyB0aGUgZHJpdmVyIGNhbiBjYWNoZSBpdCwganVzdCBsaWtlIG1hYzgwMjExLgoKWW91IGNh
bid0IHNlcmlvdXNseSBiZSBzdWdnZXN0aW5nIHRoYXQgdGhlIGRyaXZlciBkb2Vzbid0ICpoYXZl
KiBlbm91Z2gKaW5mb3JtYXRpb24gLSBldmVyeXRoaW5nIHBhc3NlZCB0aHJvdWdoIGl0IDopCgo+
IEkgbWVhbnQgdGhhdCBoYXJkd2FyZSBoYXMgYmVlbiByZWNvdmVyZWQgJiBpcyBvcGVyYXRpb25h
bCBhZ2FpbiAoZHJpdmVyCj4gY2FuIHRhbGsgdG8gaXQpLiBJIGV4cGVjdGVkIHVzZXIgc3BhY2Ug
dG8gcmVjb25maWd1cmUgYWxsIGludGVyZmFjZXMKPiB1c2luZyB0aGUgc2FtZSBzZXR0aW5ncyB0
aGF0IHdlcmUgdXNlZCBvbiBwcmV2aW91cyBydW4uCj4gCj4gSWYgZHJpdmVyIHdlcmUgYWJsZSB0
byByZWNvdmVyIGludGVyZmFjZXMgc2V0dXAgb24gaXRzIG93biAod2l0aCBhIGhlbHAKPiBvZiBj
Zmc4MDIxMSkgdGhlbiB1c2VyIHNwYWNlIHdvdWxkbid0IG5lZWQgdG8gYmUgaW52b2x2ZWQuCgpU
aGUgZHJpdmVyIGNhbiBkbyBpdCwgbWFjODAyMTEgZG9lcy4gSXQncyBqdXN0IGEgbWF0dGVyIG9m
IHdoYXQgdGhlCmRyaXZlciB3aWxsIGRvIG9yIG5vdC4KCj4gRmlyc3Qgb2YgYWxsIEkgd2FzIHdv
bmRlcmluZyBob3cgdG8gaGFuZGxlIGludGVyZmFjZXMgY3JlYXRpb24uIEFmdGVyIGEKPiBmaXJt
d2FyZSBjcmFzaCB3ZSBoYXZlOgo+IDEpIEludGVyZmFjZXMgY3JlYXRlZCBpbiBMaW51eAo+IDIp
IE5vIGNvcnJlc3BvbnNpbmcgaW50ZXJmYWNlcyBpbiBmaXJtd2FyZQoKPiBTeW5jaW5nIHRoYXQg
KHJlLWNyZWF0aW5nIGluLWZpcm13YXJlIGZpcm13YXJlcykgbWF5IGJlIGEgYml0IHRyaWNreQo+
IGRlcGVuZGluZyBvbiBhIGRyaXZlciBhbmQgaGFyZHdhcmUuCgpXZSBkbyB0aGF0IGluIG1hYzgw
MjExLCBpdCB3b3JrcyBmaW5lLiBXaHkgd291bGQgaXQgYmUgdHJpY2t5PwoKSWYgc29tZXRoaW5n
IGZhaWxzLCBJIHRoaW5rIHdlIGZvcmNlIHRoYXQgaW50ZXJmYWNlIHRvIGdvIGRvd24uCgo+IEZv
ciBzb21lIGNhc2VzIGl0IGNvdWxkIGJlIGVhc2llciB0bwo+IGRlbGV0ZSBhbGwgaW50ZXJmYWNl
cyBhbmQgYXNrIHVzZXIgc3BhY2UgdG8gc2V0dXAgd2lwaHkgKGNyZWF0ZSByZXF1aXJlZAo+IGlu
dGVyZmFjZXMpIGFnYWluLiBJJ20gbm90IHN1cmUgaWYgdGhhdCdzIGFjY2VwdGFibGUgdGhvdWdo
Pwo+IAo+IElmIHdlIGFncmVlIGludGVyZmFjZXMgc2hvdWxkIHN0YXkgYW5kIGRyaXZlciBzaW1w
bHkgc2hvdWxkIGNvbmZpZ3VyZQo+IGZpcm13YXJlIHByb3Blcmx5LCB0aGVuIHdlIG5lZWQgYWxs
IGRhdGEgYXMgZXhwbGFpbmVkIGVhcmxpZXIuIHN0cnVjdAo+IGNmZzgwMjExX2FwX3NldHRpbmdz
IGlzIG5vdCBhdmFpbGFibGUgZHVyaW5nIHJ1bnRpbWUuIEhvdyBzaG91bGQgd2UKPiBoYW5kbGUg
dGhhdCBwcm9ibGVtPwoKWW91IGNhbiBjYWNoZSBpdCBpbiB0aGUgZHJpdmVyIGluIHdoYXRldmVy
IGZvcm1hdCBtYWtlcyBzZW5zZS4KCj4gSSB3YXMgYWltaW5nIGZvciBhIGJydXRhbCBmb3JjZSBz
b2x1dGlvbjoganVzdCBtYWtlIHVzZXIgc3BhY2UKPiBpbnRlcmZhY2VzIG5lZWQgYSBmdWxsIHNl
dHVwIGp1c3QgYXQgdGhleSB3ZXJlIGp1c3QgY3JlYXRlZC4KCllvdSBjYW4gc3RpbGwgZG8gdGhh
dCBidHcsIGp1c3QgdW5yZWdpc3RlciBhbmQgcmUtcmVnaXN0ZXIgdGhlIHdpcGh5LgoKam9oYW5u
ZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
