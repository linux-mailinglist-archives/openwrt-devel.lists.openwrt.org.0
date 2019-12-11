Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F8111AD45
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 15:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbftMRkmhIq3LjvcoxlL/lNd5/7Z3ML+5VVuVmVPonA=; b=m8j6fvGU2Hsh8t
	3ayLgPASevN94LnspLuDB59SpYlM9vW7zsdip2nWOMk1iEYHUCIOq41IRrzQndy3xFPO3LJ30inIF
	7d5+/U2jXukW/Q0meojFf2UXExKshkqlEFKH60mQE8RQ9QkXZiLEYAMPb1jrLlTgv6NrPtFNTD4WN
	0LMnMDodRwia03k3fbo6KS/PXFukw49fS7EGN1f3X/VC2tTrD5K5Hoda5vw6HwZv5869oamLmhrUk
	kppE1xLSKEIBxEpsKBSwLjn62elhTKRyTHnVWRd0K5NOF2Re792Crjf4cU5FhSRoCIh2eQFIDLfhR
	oJUUowgVfnzxl+6zocUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2sn-0007Ib-29; Wed, 11 Dec 2019 14:22:29 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2sf-0007I4-F8
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 14:22:22 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1if2sb-00031Z-Ko; Wed, 11 Dec 2019 15:22:18 +0100
Date: Wed, 11 Dec 2019 15:22:09 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Tom Psyborg <pozega.tomislav@gmail.com>
Message-ID: <20191211142209.GC1371@makrotopia.org>
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_062221_507783_839EDB29 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Inquery
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

SGkgVG9taXNsYXYsCgpPbiBXZWQsIERlYyAxMSwgMjAxOSBhdCAxMToyNDoyMUFNICswMTAwLCBU
b20gUHN5Ym9yZyB3cm90ZToKPiBzdWNrIGl0CgpBcyBhIGNvbW11bml0eSwgd2UgZGVjaWRlZCB0
byBnaXZlIG91ciBzZWxmIGEgc2V0IG9mIG1pbmltYWwgcnVsZXNbMV0uCkFuZCBldmVuIHRob3Vn
aCBpdCBpcyBpbiB0aGUgbGFzdCBwb3NpdGlvbiwgcnVsZSAjMTIgIkJlIG5pY2UgdG8gZWFjaApv
dGhlci4iIGlzIG1lYW50IGp1c3QgYXMgc2VyaW91cyBhcyBhbGwgdGhlIG90aGVyIHJ1bGVzLgoK
U28gaGVyZSwgbm90IGZvciB0aGUgZmlyc3QgdGltZSwgeW91IGFyZSB1c2luZyBsYW5ndWFnZSB3
aGljaCBoYXMgdGhlCm9ubHkgcHVycG9zZSB0byBodXJ0IG90aGVyIHBlb3BsZSAoZm9yIHdoaWNo
IHJlYXNvbiBldmVyLCBpdCBkb2Vzbid0Cm1hdHRlcikuIFRoaXMgaXMgdGhlcmVmb3JlIGEgdmVy
eSBjbGVhciB2aW9sYXRpb24gdG8gdGhlIGFib3ZlCm1lbnRpb25lZCBydWxlLiBZb3Ugc3RhdGVt
ZW50ICJzdWNrIGl0IiAoZ3Vlc3Mgd2hhdCkgaXMgYWxzbyBhbiBvYnZpb3VzCmFuZCBkaXNndXN0
aW5nIGV4YW1wbGUgb2YgYSBtYXNjdWxpc3QgY3VsdHVyZSB3aGljaCBodXJ0cyBvdXIgY29tbXVu
aXR5CmFzIGEgd2hvbGUgYW5kIEkgc3Ryb25nbHkgYmVsaWV2ZSB3ZSBzaG91bGQgbm90IHRvbGVy
YXRlIHRoYXQuCgpBbmQgeWVzIHRoaXMgd2FzIGEgc3BhbSBtYWlsLiBBbmQgaXQncyBldmVuIG5l
ZWRsZXNzIHRvIHNheSB0aGF0CnJlcGx5aW5nIHRvIGEgc3BhbSBlbWFpbCBpbiB3aGljaCBldmVy
IHdheSB3aWxsIGFsd2F5cyBtYWtlIGl0IHdvcnNlLgpCdXQgdGhhdCdzIG5vdCB0aGUgcG9pbnQg
aGVyZSBhbmQgSSB3aWxsIG5vdCBlbmdhZ2UgaW4gYW55IGRpc2N1c3Npb24Kb24gdGhhdCBtYXR0
ZXIuCgpQbGVhc2UgbGVhcm4gdG8gYmVoYXZlIG9yIGxlYXZlIHVzIGFsb25lLgoKWzFdOiBodHRw
czovL29wZW53cnQub3JnL3J1bGVzCgoKPiAKPiBPbiAxMS8xMi8yMDE5LCBycWd4ZmMgPHJxZ3hm
Y0B2aXAuMTYzLmNvbT4gd3JvdGU6Cj4gPgo+ID4KPiA+IEhlbGxvIFNpciDvvIwKPiA+Cj4gPiBX
ZSBhcmUgIGEgdHJhZGluZyBjb21wYW55IG5hbWVkIFNoYWFueGkgSGFvIFppIEd1YW4gTWF0ZXJp
YWxzIENvLixMdGQgIC4gTm93Cj4gPiB3ZSBhcmUgdmVyeSBpbnRlcmVzdGVkIGluIHlvdXIgcHJv
ZHVjdHMgLCB3ZSB3aWxsIHBsYW4gdG8gIHNlbGwgeW91cgo+ID4gcHJvZHVjdHMgaW4gdGhlIENo
aW5lc2UgbWFya2V0IC4gSWYgeW91IGFyZSBpbnRlcmVzdGVkIGluIGNvb3BlcmF0aW9uLAo+ID4g
cGxlYXNlIHNlbmQgdXMgYSBjYXRhbG9nIGFuZCBwcmljZWxpc3QgLncKPiA+IExvb2tpbmcgZm9y
d2FyZCB0byByZWNlaXZpbmcgeW91ciByZXBseSAuCj4gPgo+ID4gQmVzdCByZWdhcmRzLAo+ID4g
Q2F0aGVyaW5hCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
