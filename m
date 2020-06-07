Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5671F1010
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 23:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vqIqJk3zzVSUchcNytATkihViUphmGl8dw4oagtDq00=; b=qNmh3/z0sSwLdm4GxoMFj2Tkuv
	+7UvmcSUPB7YFrKXWEc4p+y5Q7mGVKM/cjZV7qB++Yz0hIxC7reLsHMIwO6XbJJlgohMA+uZruSq1
	JYRb9sm8diCRSbP7DNgfkzvWtsTfDC4qTJrtlfQVWn98/9+0JCxH2G3eTkbG9J2q5gpNAwNjwkiPJ
	gAhDUL39poCF/rHanYxWMtyx5OF9qTgBFTrjs2r6JNJhp7J5aZZidUXA03YUeo04Xf+ZZ6GgTe3Ng
	4uxsgTIStVE+7AHGOEi7bDmt0lYzbWS5CfrfijzhtYTvSFJnfH/RYx8KDaqF6h+zFBArSvJ5Y4MxY
	6ZOPh3gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji3CL-0007Nx-B2; Sun, 07 Jun 2020 21:51:21 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji3CE-0007NV-2K
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 21:51:15 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1ji3C8-0000qx-Ud
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 23:51:09 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1ji3C8-0001NB-Ej
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 23:51:08 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 07 Jun 2020 23:51:06 +0200
Message-ID: <4114315.hVT4NOPAdj@strike>
In-Reply-To: <0669A844-2A58-4A26-AFEF-E09072CF4B2E@gmail.com>
References: <ea8fbeab-bdd6-6d57-5053-35f7c488d907@systemli.org>
 <0669A844-2A58-4A26-AFEF-E09072CF4B2E@gmail.com>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 
 Content preview:  Am Sonntag, 7. Juni 2020, 23:39:08 CEST schrieb Rosen Penev:
    > > Le 7 juin 2020 à 1:38 PM, Nick <vincent@systemli.org> a écrit : > >
    > > ﻿I would suggest doing this PR as patch like freifunk berli [...] 
 
 Content analysis details:   (-2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_145114_263466_BEA65386 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] olsrd: not compiling with gcc 9
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gU29ubnRhZywgNy4gSnVuaSAyMDIwLCAyMzozOTowOCBDRVNUIHNjaHJpZWIgUm9zZW4gUGVu
ZXY6Cj4gPiBMZSA3IGp1aW4gMjAyMCDDoCAxOjM4IFBNLCBOaWNrIDx2aW5jZW50QHN5c3RlbWxp
Lm9yZz4gYSDDqWNyaXQgOgo+ID4gCj4gPiDvu79JIHdvdWxkIHN1Z2dlc3QgZG9pbmcgdGhpcyBQ
UiBhcyBwYXRjaCBsaWtlIGZyZWlmdW5rIGJlcmxpbiBpcyBkb2luZyBpdDoKPiA+IGh0dHBzOi8v
Z2l0aHViLmNvbS9mcmVpZnVuay1iZXJsaW4vZmlybXdhcmUvY29tbWl0LzkzZjlhMDI2ZTAyNWM3
YjY2MzM2OWY1Cj4gPiAyODRjZWMwYmI5MTM0NTIyMAo+IFNvbWVvbmUgbmVlZHMgdG8gcHJvcG9z
ZSBvbmUgdGhlbi4KPiAKClRoaXMgcGF0Y2ggd2FzIHJlZmVyZW5jZWQgYnkgYW4gaXNzdWUgKGh0
dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0LXJvdXRpbmcvCnBhY2thZ2VzL2lzc3Vlcy81NDcjaXNz
dWVjb21tZW50LTU4NjIxMzE1NSksIGJ1dCBvcmlnaW5hbCBhdXRob3Igd2FzIG5vdAphYmxlIHRv
IHJ1bnRpbWUtdGVzdC4gSW4gRnJlaWZ1bmsgQmVybGluIHdlIGFsc28gZG9uJ3QgdXNlIHRoZSBw
dWQtcGx1Z2luIGFuZApjYW4ndCB0aGVyZWZvcmUgbm90IGNvbmZpcm0gaXQuCgo+ID4gT3RoZXJ3
aXNlLCBvbHNyZCB3b24ndCBjb21waWxlIGFueW1vcmUuIDovIE9yIG1ha2luZyBhIGZvcmssIGJl
Y2F1c2UKPiA+IG9sc3JkIHNlZW1zIG5vdCB0byBiZSBtYWludGFpbmVkIGFueW1vcmUuCj4gPiAK
CkkganVzdCBvcGVuZWQgUFIgIzU3NSB0byBtYXJrIHRoaXMgcGFja2FnZSBhcyBicm9rZW4sIHRp
bGwgdGhlcmUgaXMgYSAKbWFpbnRhaW5lciBhZ2FpbiAuLi4KClN2ZW4KCj4gPj4gT24gMDcuMDYu
MjAgMjI6MjcsIE5pY2sgd3JvdGU6Cj4gPj4gSGVyZSBpcyBhIFBSIHRoYXQgaXMgZml4aW5nIHRo
ZSBpc3N1ZS4gV2h5IGlzIHRoYXQgbm90IG1lcmdlZD8gOi8KPiA+PiAKPiA+PiBodHRwczovL2dp
dGh1Yi5jb20vT0xTUi9vbHNyZC9wdWxsLzc5L2ZpbGVzCj4gPj4gCj4gPj4gT24gMDcuMDYuMjAg
MjI6MDMsIFJvc2VuIFBlbmV2IHdyb3RlOgo+ID4+Pj4gTGUgNyBqdWluIDIwMjAgw6AgMTowMCBQ
TSwgTmljayA8dmluY2VudEBzeXN0ZW1saS5vcmc+IGEgw6ljcml0IDoKPiA+Pj4+IAo+ID4+Pj4g
77u/SSBjYW4gbm90IGNvbXBpbGUgb2xzcmQgZGFlbW9uIHdpdGggZ2NjOS4KPiA+Pj4+IAo+ID4+
Pj4+ICNkZWZpbmUgaXNOYU4oeCkgKHggIT0geCkKPiA+Pj4+PiAuLi4KPiA+Pj4+PiBpZiAoIWlz
TmFOKGdwc2RhdGEtPmZpeC50aW1lKSkgewo+ID4+Pj4gCj4gPj4+PiBIZXJlIGZpeC50aW1lIGlz
IGEgc3RydWN0IHRpbWVzcGVjLgo+ID4+Pj4gVGhlIGNhbGwgaXMganVzdCB3cm9uZywgb3I/IFdo
eSBzaG91bGQgSSBjaGVjayBhIHN0cnVjdCBmb3IgYSB2YWxpZAo+ID4+Pj4gZmxvYXQ/Cj4gPj4+
IAo+ID4+PiBUaGlzIGJyb2tlIHdoZW4gZ3BzdXRpbHMgZ290IHVwZGF0ZWQuIEFQSSBjaGFuZ2Ug
d2l0aCBsaWJncHMuCj4gPj4+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
