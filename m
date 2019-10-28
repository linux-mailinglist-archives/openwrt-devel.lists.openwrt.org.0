Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03271E75E7
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 17:13:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIeZZS5nAypJ0SlwSnmcTZS7QFxDpAaBLloYY+iEjZA=; b=KTNuhay5TFBLtK
	Gn4xpbPMRUa1UEdthXOb1o1l45DCZrDB6XKLOOD/X4qDEqbzQ9C1oOssY66gQlQBdpol20WHy+i6Q
	Pl0AMc8BOvfIhnuN5DFCPW35n/EuOv6k1zUOwHaxQQNuERZwIRk4FDWpSu4HNy3hpG6CDkzkqI6qF
	TD3RzVsXrPDL9gdjihr4IVbaFC6/Nyv6RuNNZ3hdRcvo4+rSL8Av40IBxoWLZjMYC+94WLzM5LfcH
	K25GyZXHGa0i8lXliO8fGQ+O1tgNUpGNkqOceh3Pv2dAuhzUfnJTUN+KNkjH3sXyY8dvgcHbWjB+I
	uZBi8w3+nB6B6ZuH57ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7eN-0007WJ-Sp; Mon, 28 Oct 2019 16:13:47 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7eB-0007V9-HW
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 16:13:37 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x9SGDRf9016073
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 28 Oct 2019 17:13:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1572279208; bh=q9tqdC/bJtJl1ovJZww2n8MSpCQe54ssDl5ZHngDlsI=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=njKsJFu0NGVrzV/ym1Fy5qYAyB9ENaasI1rHoyKpj1ObMXKTp+HQ6cNr025VHkgSo
 Vw4bjLx4oBitntYA8h9NBKEmk3jn9BQFNI5k5AwaQ+pu0kERBJvCYJjqjPnhk4h2Cw
 TsvYEp7cnYFCeovLn8DXcaKThAJz3Nnf0U6Qgwqk=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iP7e2-0004EV-E4; Mon, 28 Oct 2019 17:13:26 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Organization: m
References: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
 <20191028115743.GD22393@meh.true.cz>
 <025101d58d89$ae223110$0a669330$@adrianschmutzler.de>
 <20191028135923.GE22393@meh.true.cz>
Date: Mon, 28 Oct 2019 17:13:26 +0100
In-Reply-To: <20191028135923.GE22393@meh.true.cz> ("Petr =?utf-8?Q?=C5=A0t?=
 =?utf-8?Q?etiar=22's?= message of
 "Mon, 28 Oct 2019 14:59:23 +0100")
Message-ID: <87v9s897bt.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_091336_092660_56FC81BE 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] improved handling of contributions [Was: Re:
 patches from 2018]
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 'Tom Psyborg' <pozega.tomislav@gmail.com>, 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JpdGVzOgoKPj4gMi4gVGhvc2Ugd2hlcmUg
dGhlcmUgbmV2ZXIgd2FzIGFueSBmZWVkYmFjawo+PiBIb3dldmVyLCBJIGRvIG5vdCB0aGluayBp
dCdzIGZhaXIgdG8ganVzdCBjbG9zZSBhbiBvbGQgc3VibWlzc2lvbiB3aXRob3V0Cj4+IGFueSBk
ZXZlbG9wZXIgKG9yIG90aGVycyBwZW9wbGUncykgZmVlZGJhY2sgKGNhdGVnb3J5IDIpLCBqdXN0
IGJlY2F1c2UKPj4gbm9ib2R5IGlzIGludGVyZXN0ZWQgaW4gaXQuCj4KPiBBbmQgd2hhdHMgdGhl
IHBvaW50IHRvIGtlZXAgdGhlbSBsaW5nZXJpbmcgb24gdGhlIEdIIGZvcmV2ZXI/CgpJIHdvbmRl
cmVkIHRoZSBzYW1lLiBLZWVwaW5nIGl0IGl0IG9wZW4gZm9yZXZlciB3aWxsIG5vdCBwcm9kdWNl
IG9yZQpmZWVkYmFjay4gIENsb3NpbmcgaXMgYSBzaWduYWwgdG8gdGhlIHN1Ym1pdHRlciB0aGF0
IHRoZXkgbmVlZCB0bwpyZS1vcGVuLCBhbmQgbW9zdCBsaWtlbHkgcmV3b3JrIHRoZSBzdWJtaXNz
aW9uIHRvIGF0dHJhY3QgbW9yZQphdHRlbnRpb24uICBPciB0cnkgc29tZXRoaW5nIGVsc2UuLgoK
S2VlcGluZyBQUnMgb3BlbiBmb3JldmVyIGRvZXNuJ3QgaGVscCBhbnlvbmUuCgpBbGxvd2luZyA2
IG1vbnRocyB3aXRob3V0IGFueSBmZWVkYmFjayBvciBjb21tZW50IGlzIHB1c2hpbmcgaXQgZmFy
CmVub3VnaCBJTUhPLiAgWW91IGNvdWxkIGhhdmUgc2FpZCAzIG1vbnRocyBpZiB5b3Ugd2FudGVk
LiBUaGVyZSB3b24ndCBiZQphbnkgZmVlZGJhY2sgYmV0d2VlbiAzIGFuZCA2IG1vbnRocyBpZiB0
aGVyZSB3YXNuJ3QgYW55IGJldHdlZW4gMCBhbmQgMwptb250aHMuCgo+IE15IGZlZWxpbmcgaXMs
Cj4gdGhhdCBwZW9wbGUgYXJlIHNpbXBseSBhZnJhaWQgdG8gcmVqZWN0IHRoZSBQUnMgc28gdGhl
eSBzaW1wbHkgaWdub3JlIHRoZW0sCj4gYnV0IGluIHRoZSBlbmQsIG5ldCByZXN1bHQgaXMgdGhl
IHNhbWUuCgpNYXliZS4gIEJ1dCB0aGVyZSBpcyBwcm9iYWJseSBvdGhlciByZWFzb25zIHRvby4g
IFNvbWUgc3ViamVjdHMgYXJlIHZlcnkKc3BlY2lhbGl6ZWQgd2l0aG91dCBhbnkgZXhwZXJ0cyBh
dmFpbGFibGUgZm9yIHJldmlldy4gIFNvbWUgUFJzIG1pZ2h0IGJlCnRvbyBjb21wbGV4IGFuZCBt
aXhpbmcgdG9vIG1hbnkgdGhpbmdzIHdpdGhvdXQgYW55IG9mIHRoZSByZXZpZXdlcnMKY29uc2lk
ZXJpbmcgaXQgdG8gYmUgbWFpbmx5IHRoZWlyIGFyZWEgb2YgZXhwZXJ0aXNlLiAgRXRjLgoKQ2xv
c2luZyBpcyBnb29kIGFueXdheS4gIEl0IHNob3VsZCBwcm92b2tlIHNvbWUgYWN0aW9uIGZyb20g
dGhlCnN1Ym1pdHRlciwgaW4gY2FzZSB0aGV5IHN0aWxsIGNhcmUuCgpTb21lIG9mIHRoZSBwcm9i
bGVtIGlzIG9idmlvdXNseSBsYWNrIG9mIHJldmlld2VyIHRpbWUsIGxpa2UgZm9yIG1vc3QKb3Bl
biBzb3VyY2UgcHJvamVjdHMuICBCdXQgbmVpdGhlciBrZWVwaW5nIFBScyBvcGVuIG5vciB3aGlu
aW5nIGFib3V0CnRoZSBwcm9ibGVtIHdpbGwgaGVscC4gIFRoZSBvbmx5IHZpYWJsZSBzb2x1dGlv
biBpcyB0aGF0IHRoZSBzdWJtaXR0ZXIKdGFrZXMgYSBzZWNvbmQgbG9vayBhdCBpdCBhbmQgc2Vl
cyBpZiB0aGVyZSBpcyBzb21ldGhpbmcgdGhleSBjYW4gZG8gdG8KZWFzZSB0aGUgcmV2aWV3ZXJz
IGpvYi4KCgpCasO4cm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
