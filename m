Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20332D8DE7
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 12:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9sSsex9OA9kQYMoZ7DXFHdzwBGuP2T+tRoBOfAobroY=; b=rXG0DDL5M722IW
	fv18tkgmvzKgLyIuFTkR31b+j05JUjFzcpPJQ/IzoYRxthuLTbDjkvvL4gtIHS9NTKhZCnYBN9PRt
	K58+IOi8q9VngioYeWM81dpOHW7UDILowBbjAsz4Q/Ve4FAZ/TBJMhEcvR+FQFvW/fcZ4akqTDnuh
	r8HZUL4pxmvhgUHJWsUZYFfidJbylOCA/al05fj8KQGQoGcJX2lYOMkzNMy24D9zoyl52UO2u7LhJ
	aWrtyivYD4k5bCeQ24s5o0YkehiSqu38tqLSo2FsPHuCNVPxhkXqKtGOX1y0Elmi8ULYOW1w8A72F
	bnHamOMg073vWqNnTFhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgXy-0001dR-Ii; Wed, 16 Oct 2019 10:28:50 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgXi-0001bF-Ip; Wed, 16 Oct 2019 10:28:36 +0000
Received: from p5dcfb8c0.dip0.t-ipconnect.de ([93.207.184.192]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iKgXg-0007mc-Fz; Wed, 16 Oct 2019 12:28:32 +0200
From: John Crispin <john@phrozen.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Message-ID: <8f89a4ba-9495-cf73-23f6-2497d0ca1899@phrozen.org>
Date: Wed, 16 Oct 2019 12:28:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_032834_783884_FE0E2B79 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Joining the SFC
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

SGksCgp0aGUgT3BlbldydCBwcm9qZWN0IGhhcywgYWZ0ZXIgbW9udGhzIG9mIGRlbGliZXJhdGlv
biwgZGVjaWRlZCB0byBsZWF2ZSAKdGhlIFNQSSBhbmQgaW50ZW50cyB0byBqb2luIHRoZSBTb2Z0
d2FyZSBGcmVlZG9tIENvbnNlcnZhbmN5IGFzIGZ1dHVyZSAKZmlzY2FsIHNwb25zb3IuCgpQcmlv
ciB0byBjb250YWN0aW5nIHRoZSBTRkMgYW5kIFNQSSB3ZSBoYWQgYSBkaXNjdXNzaW9uIGFtb25n
IHRoZSAKY29udHJpYnV0b3JzIHdoaWNoIHN0YXJ0ZWQgZHVyaW5nIHRoZSBIYW1idXJnIG1lZXRp
bmcuCgpXZSBoYXZlIGNvbWUgdG8gdGhlIGNvbmNsdXNpb24gdGhhdCB0aGUgU0ZDLCBiZWluZyBh
IGNvbXByZWhlbnNpdmUgCnNwb25zb3IsIGlzIGEgYmV0dGVyIGZpdCBmb3IgdGhlIG5lZWRzIGFu
ZCBwZWN1bGlhcml0aWVzIG9mIG91ciBwcm9qZWN0IAphbmQgdGhhdCBpdCB3aWxsIGVuYWJsZSB1
cyB0byBiZXR0ZXIgZm9jdXMgb24gcHJvamVjdCBhbmQgY29tbXVuaXR5IApkZXZlbG9wbWVudCBp
biB0aGUgZnV0dXJlLgoKV2UgYXJlIHZlcnkgZ3JhdGVmdWwgZm9yIHRoZSBzdXBwb3J0IGZyb20g
dGhlIFNQSSBvdmVyIHRoZSB5ZWFycyBhbmQgCndhbnQgdG8gdGhhbmsgdGhlbSBmb3IgYWxsIHRo
ZSBzZXJ2aWNlcyBwcm92aWRlZCB0byB1cy4KCiBGcm9tIG91ciBwcmV2aW91cyBjYWxscyByZWdh
cmRpbmcgdGhlIGlzc3VlLCB3ZSBsZWFybmVkIHRoYXQgYm90aCB0aGUgClNQSSBhbmQgdGhlIFNG
QyBhcmUgc3VwcG9ydGl2ZSBvZiB0aGlzIGRlY2lzaW9uIGFuZCB3ZSBncmVhdGx5IAphcHByZWNp
YXRlIHRoZWlyIG9uZ29pbmcgYXNzaXN0YW5jZSBpbiBoYW5kbGluZyB0aGUgdHJhbnNpdGlvbi4K
ClRoZSBvdXRjb21lIG9mIHRoZSB2b3RlIHdhcyBhcyBmb2xsb3dzCgpLZXZpbiBEYXJieXNoaXJl
LUJyeWFudCBBQ0sKUGV0ciDFoHRldGlhciBBQ0sKSGFucyBEZWRlY2tlciBBQ0sKVGVkIEhlc3Mg
QUNLCllvdXNvbmcgWmhvdSBBQ0sKSGF1a2UgTWVocnRlbnMgQUNLClBpb3RyIER5bWFjeiBBQ0sK
RmVsaXggRmlldGthdSBBQ0sKTWF0dGhpYXMgU2NoaWZmZXIgQUNLCkRhbmllbCBHb2xsZSBBQ0sK
TWF0aGlhcyBLcmVzaW4gQUNLCkNodWFuaG9uZyBHdW8gQUNLCkRhdmlkIEJhdWVyIEFDSwpDaHJp
c3RpYW4gTGFtcGFydGVyIEFDSwpSYWZhxYIgTWnFgmVja2kgQUNLCktvZW4gVmFuZGVwdXR0ZSBB
Q0sKw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIEFDSwpKby1QaGlsaXBwIFdpY2ggQUNLCkpvaG4g
Q3Jpc3BpbiBBQ0sKQWxleGFuZGVyIENvdXplbnMgYWJzdGFpbgpGbG9yaWFuIEZhaW5lbGxpIGFi
c3RhaW4KSW1yZSBLYWxveiBhYnN0YWluCkpvbmFzIEdvcnNraSBhYnN0YWluCkx1a2EgUGVya292
IGFic3RhaW4KTWlya28gVm9ndCBhYnN0YWluClN0ZXZlbiBCYXJ0aCBhYnN0YWluClN0aWpuIFRp
bnRlbCBhYnN0YWluClpvbHRhbiBIRVJQQUkgYWJzdGFpbgoKV2UgaG9wZSB0aGF0IHRoaXMgZGVj
aXNpb24gd2lsbCBoZWxwIHRvIGFkdmFuY2UgdGhlIE9wZW5XcnQgcHJvamVjdCBpbiAKdGhlIGZ1
dHVyZS4KCiDCoMKgwqDCoMKgwqDCoCBPcGVuV3J0CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
