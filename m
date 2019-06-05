Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAC735DF6
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 15:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiqCMEvZ/pfy7j2eQ3I/i0w6YvCHs93bxfx4AMv5nRY=; b=MfBfG+KAc8LLEn
	H5i0qFYNxzttBYjdTBt0/Gwybb4YanUZoNUuA9iq3dGo2HmOw/U/q31VL3ptM0T7I3i0x0cT/iYmL
	gqwSoUCLTun12tu1mG8e4XrbDsbMZ0LPa+HheuRDrzW3PjM+NufC8TxqaoKnVULhNNnQUGBDtazay
	YFa/n2KUTl8PTIve/SLk12Yq7kJ9BxCUtsLssXPkofrdZ7aBbLdKJGMPQZ+xWWl3qifON9Xcem3Rl
	1mWXb2MIujwGjS8SNMGyP4Suu0x/UC0gw0chlMItXKFbzi9Rs62dSJWT3gxjoEqqrCOkRG7WdbqX1
	a1/k3zeHuc2AOg3grI3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYW2k-0008Ih-HQ; Wed, 05 Jun 2019 13:33:30 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYW2c-0008IN-JL
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 13:33:24 +0000
Received: from miraculix.mork.no ([IPv6:2a02:2121:309:b35d:f0c1:6ff:fe1f:cac9])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x55DXIOo007482
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 5 Jun 2019 15:33:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1559741599; bh=cHlNIrQixXTbWHLvU2IQlJKOHJmLBFYEq+7cAKYiY60=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=muoL9jaDmdkK2ncKcHXl3yIw39lEWIRq+BPM1oTcGTDSgiWMt8XKNMbALWiaoieDx
 DhX+B1hieupHIuhkkOGewH1oJZez1rxeM4Mw2RyC9YB1MTGefd7QKGOdZgvB4g7317
 1lsrBMtujZbzmYssUX3ZaS4mnuYqHepm9q81t4Oo=
Received: from bjorn by miraculix.mork.no with local (Exim 4.89)
 (envelope-from <bjorn@mork.no>)
 id 1hYW2Y-0007NO-9z; Wed, 05 Jun 2019 15:33:18 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: John Crispin <john@phrozen.org>
Organization: m
References: <87pnnskzlt.fsf@miraculix.mork.no>
 <20190605121911.3324-1-bjorn@mork.no>
 <3db4da41-39b1-f2ae-94f7-ae2503225ce2@phrozen.org>
Date: Wed, 05 Jun 2019 15:33:18 +0200
In-Reply-To: <3db4da41-39b1-f2ae-94f7-ae2503225ce2@phrozen.org> (John
 Crispin's message of "Wed, 5 Jun 2019 14:31:36 +0200")
Message-ID: <874l54kvhd.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_063322_990455_521C674D 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] scripts/feeds: add src-include method
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
Cc: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cml0ZXM6Cj4gT24gMDUvMDYvMjAxOSAx
NDoxOSwgQmrDuHJuIE1vcmsgd3JvdGU6Cj4+IFRoZSBzcmMtaW5jbHVkZSBtZXRob2QgYWxsb3dz
IHJlY3Vyc2l2ZSBpbmNsdXNpb24gb2YgZmVlZHMuY29uZiBzbmlwcGV0cy4KPj4KPj4gVGhpcyBj
YW4gZm9yIGV4YW1wbGUgYmUgdXNlZCBmb3IgYWRkaW5nIHN0YXRpYyBsb2NhbCBmZWVkcyB0bwo+
PiBmZWVkcy5jb25mLmRlZmF1bHQgd2l0aG91dCBldmVyIGhhdmluZyB0byB1cGRhdGUgdGhlIGxv
Y2FsIGZlZWRzLmNvbmY6Cj4+Cj4+ICAgc3JjLWluY2x1ZGUgZGVmYXVsdHMgZmVlZHMuY29uZi5k
ZWZhdWx0Cj4+ICAgc3JjLWxpbmsgY3VzdG9tIC91c3IvbG9jYWwvc3JjL2xlZGUvY3VzdG9tCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IEJqw7hybiBNb3JrIDxiam9ybkBtb3JrLm5vPgo+PiAtLS0KPj4K
Pj4gSXQgd291bGQgb2YgY291cnNlIGJlIG5pY2Ugb2YgbWUgaWYgSSBoYWQgdGVzdGVkIG15IHBh
dGNoZXMsIGV2ZW4KPj4gaWYgdGhleSBhcmUgb25seSBtZWFudCBmb3IgZGlzY3Vzc2lvbi4KPj4K
Pj4gVGhpcyB2ZXJzaW9uIGFjdHVhbGx5IHdvcmtzLiAgQ2hhbmdlcyBpbiB2MjoKPj4gICAtIHVz
ZSBhIHZhcmlhYmxlIGZvciB0aGUgZmlsZSBoYW5kbGUgc28gd2UgY2FuIG9wZW4gZmlsZXMgcmVj
dXJzaXZlbHkKPj4gICAtIG1hdGNoIG9uIHRoZSByZWFsICdzcmMtaW5jbHVkZScga2V5d29yZAo+
Pgo+Pgo+PiBCasO4cm4KPgo+Cj4gSGkgQmrDuHJuCj4KPiB0aGF0IHdvdWxkIGFnYWluIGludm9s
dmUgY2FycnlpbmcgZXh0cmEgZmlsZXMgYXJvdW5kLCB3aGljaCBpcyB3aGF0IEkKPiBhbSB0cnlp
bmcgdG8gYXZvaWQKCldlbGwsIHlvdSBjYW4gc2F5IHRoYXQgaXQgcmVwbGFjZXMgdGhlIGNvbW1h
bmQKCiBzY3JpcHRzL2ZlZWRzIHNldHVwIC1iIHNyYy1saW5rLGN1c3RvbSwvdXNyL2xvY2FsL3Ny
Yy9sZWRlL2N1c3RvbQoKd2l0aCB0aGUgYWx0ZXJuYXRpdmUgY29tbWFuZAoKIGVjaG8gLWUgInNy
Yy1pbmNsdWRlIGRlZmF1bHRzIGZlZWRzLmNvbmYuZGVmYXVsdFxuc3JjLWxpbmsgY3VzdG9tIC91
c3IvbG9jYWwvc3JjL2xlZGUvY3VzdG9tIiA+IGZlZWRzLmNvbmYKCjotKQoKSSBhbSBvYnZpb3Vz
bHkgbWlzc2luZyB5b3VyIHBvaW50LiAgSSBkbyBzZWUgdGhlIHByb2JsZW0gaGF2aW5nIHRvCipt
YWludGFpbiogbG9jYWwgZmlsZXMuICBCdXQgSSBkb24ndCBzZWUgdGhlIHByb2JsZW0gd2l0aCBz
b21lIHN0YXRpYwpsb2NhbCBmaWxlIHdoaWNoIGlzIHVzZWQgdW5tb2RpZmllZCBmb3IgZXZlcnkg
YnVpbGQgcmVnYXJkbGVzcyBvZgp2ZXJzaW9uLiBJdCBzZWVtcyBtdWNoIGVhc2llciB0aGFuIG1h
aW50YWluaW5nIGFkZGl0aW9uYWwgbG9jYWwgYnVpbGQKcnVsZXMgdG8gZ2VuZXJhdGUgb3IgdXBk
YXRlIHRoYXQgbG9jYWwgZmlsZS4KCk15IG1haW4gcHJvYmxlbSB3aXRoIGEgZmVlZHMuY29uZiB3
aGljaCBkb2Vzbid0IGF1dG8tZGVwZW5kIG9uCmZlZWRzLmNvbmYuZGVmYXVsdCwgaXMgdGhhdCBp
dCB3aWxsIGFsd2F5cyBiZSBzdGFsZS4gIEhhdmluZyBzb21lIG5ldwpjb21tYW5kIHRvIHVwZGF0
ZSBpdCBkb2VzIG5vdCBoZWxwIG1lIG1vcmUgdGhhbiBoYXZpbmcgY2F0IG9yIHNlZCBkb2VzCnRv
ZGF5LiAgSSd2ZSBmb3VuZCBteXNlbGYgbW9yZSB0aGFuIG9uY2UgYnVpbGRpbmcgYSBkZXZlbG9w
bWVudCBicmFuY2gKd2l0aCBhIGZlZWRzLmNvbmYgZ2VuZXJhdGVkIGZyb20gc29tZSByZWxlYXNl
ZCBmZWVkcy5jb25mLmRlZmF1bHQsIGFuZAp2aWNlIHZlcnNhLgoKSSBuZWVkIGEgd2F5IHRvIG1h
a2Ugc3VyZSBJIHJlbWVtYmVyIHRvIHJlZnJlc2ggdGhlIGRlZmF1bHRzIHdoZW4Kc3dpdGNoaW5n
IGJyYW5jaGVzLiAgT3IgYmV0dGVyOiBOb3QgaGF2aW5nIHRvIHJlbWVtYmVyIGl0LgoKCkJqw7hy
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
