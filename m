Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE763A447
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 10:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obexlozlTKbK5118tk1QPUXTcML9BsBKr3vWs2gDxBw=; b=MZdHYLJPRsoSUf
	5ijhclGZggFUQPX61TEH1lomSan6+DRBX6ft9LKsNx0b7F8GX+dqtdMXRyjSGgsH54l8hU2Uq4+8l
	ENBt877703FE6N8GrHTaQkAPwIWTJ1jkkr7Mwa6vTwsFLMVCYAJaVrNq2t3x97nj2rGTw9s9qEEh/
	4TIw26WNM5/Xpwp75l1Z5ool0a7YxGWhoX+IrjWx88EaOkjt4EFo+EKKfF2khphQgBX4PtdrEIVon
	6ezvgr0rLfQrLpHrburWHO94qtidBLC19yZ98oBHVUXhqAp/TEwBYxr1Q0ad6F1Bjtn0lEBvg20+E
	u/ASy09EYVR/tTxZBe9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZsqo-0004dZ-JZ; Sun, 09 Jun 2019 08:06:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZsqe-0004co-37
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 08:06:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id m3so6100269wrv.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 09 Jun 2019 01:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+0dQLOCh5JbqAz23i0GOi/KDmUy4Gz18wQ4gAGs5Ryk=;
 b=ZNBAbrB3W1PQZmKk0xrnwzaUcSk6tDyndRUSVsVDMVyMFmTFHo8Jnh0mBkgT4LjzNG
 XHEKFSxDuaan5SYEmZNpGgsiZLt9Qg/t/9OeznJvBK6wBbrvThHWsYd8I84WdUWq7mMe
 9d384itCLGwyGhwuTVLf59evCMBbBk3/FesSYuVZLOYruyShuNFO/jRtqT3mva/u7np/
 IE1GXGrhebX+3vxPHhMc30D9VHyjrFYXOc56ESugA4MeMDS4vAda3oETgR5Mkq/5A3+9
 V/t09N361wNSMKKBZ4UtJ2MYgn1vtXaa2pLT+aTZN/b/rDBPFkvPDabn4isRILoyqEpy
 kSpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+0dQLOCh5JbqAz23i0GOi/KDmUy4Gz18wQ4gAGs5Ryk=;
 b=oCIoki4vHjiWmuvzXU6vE/DQmEky+oqGcPfKAkzijc9f11b1/lvT4+uellTFYCPMuG
 vCnKhUVMAQGqUnytZHzMjK3ydK0BobANW7GyOWIF54p2oGD+QwJTmVxWOvbO+r9xkhVP
 VhVAK7Tg1QKd5vjUsxja6BFIs10HZM0jRi0iRw+hwXj3U+IBKcPCG2kXCKq95aztcSr9
 PJa7UPR8z7Kj1t2hPG+ahYFN+FxUIZqLxWrIYh9kHC+LJn6J7qBdRRjLTUSNpjtr6foN
 l5CrTy5vGqMT58wraM57q4wVwkyF51ows4I44NI2X6VFBX402gJgN+bKRUi8/vu770JM
 7vgQ==
X-Gm-Message-State: APjAAAXxWps7bEje0bfe57m3x485Ly4l0I8tlcCfGN/SHhXrJC9KY/aw
 J+tLeUF798PnGky8E0h2G28=
X-Google-Smtp-Source: APXvYqzEHW2fU060vXlEGa3s/a0JNGt9agl2CaYoONONcqCmzvTw5I/WypQ+ZehvgwdM5D62omo+fA==
X-Received: by 2002:adf:dd46:: with SMTP id u6mr27160452wrm.286.1560067595445; 
 Sun, 09 Jun 2019 01:06:35 -0700 (PDT)
Received: from debian64.daheim (pD9E295B5.dip0.t-ipconnect.de.
 [217.226.149.181])
 by smtp.gmail.com with ESMTPSA id s12sm3708909wmh.34.2019.06.09.01.06.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 01:06:34 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hZsqY-00022D-2s; Sun, 09 Jun 2019 10:06:34 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Kristian Evensen <kristian.evensen@gmail.com>
Date: Sun, 09 Jun 2019 10:06:33 +0200
Message-ID: <9290831.qgf20FLg21@debian64>
In-Reply-To: <CAKfDRXj1c32aAw5WVqkC9ULD8Xw8UoSjwamo=R3vanMvhOcPEg@mail.gmail.com>
References: <1559653541-26682-1-git-send-email-ynezz@true.cz>
 <CAAd0S9CEPJqQXJ6OhW9_597ig92Typb7s0L5HwpLm-CU=ska6g@mail.gmail.com>
 <CAKfDRXj1c32aAw5WVqkC9ULD8Xw8UoSjwamo=R3vanMvhOcPEg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_010640_165930_52873597 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix
 always missing first event
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
Cc: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1cnNkYXksIEp1bmUgNiwgMjAxOSA2OjUyOjM1IEFNIENFU1QgS3Jpc3RpYW4gRXZlbnNl
biB3cm90ZToKPiBIaSBDaHJpc3RpYW4sCj4gCj4gT24gV2VkLCBKdW4gNSwgMjAxOSBhdCAxMDoy
MyBQTSBDaHJpc3RpYW4gTGFtcGFydGVyIDxjaHVua2VleUBnbWFpbC5jb20+IHdyb3RlOgo+ID4g
QEtyaXN0aWFuIEV2ZW5zZW4sIGNhbiB5b3UgcGxlYXNlIGNoZWNrIGlmIHRoZSBmb2xsb3dpbmcg
cGF0Y2ggd291bGQgYWxzbwo+ID4gcmVzb2x2ZSB0aGUgaXNzdWVzIHlvdSBoYXZlIGJlZW4gZXhw
ZXJpZW5jaW5nPwo+ID4KPiA+IEkgaGFkIHRvIGF0dGFjaCB0aGUgcGF0Y2ggYXMgYSBmaWxlIHNp
bmNlIGdtYWlsJ3Mgd2VibWFpbCBpbnRlcmZhY2Ugbm93IHNlZW1zIHRvCj4gPiBlYXQgYWxsIHRo
ZSB0YWJzLiBJIGhvcGUgdGhpcyBzdGlsbCBnZXRzIHRocm91Z2guCj4gCj4gUGF0Y2ggYXJyaXZl
ZCBzYWZlIGFuZCBzb3VuZCwgYW5kIEkganVzdCBmaW5pc2hlZCBteSB0ZXN0cyBvbiB0aGUKPiBa
QlQtV0QzMjMgKEFSOTM0NCkuIEkgc3RhcnRlZCBvdXQgYnkgYnVpbGRpbmcgYSBmcmVzaCBpbWFn
ZSBmcm9tCj4gbWFzdGVyIChoZWFkIG9mIG15IHRyZWUgaXMgY29tbWl0IDY2ZDFjMjk2NTVhNCks
IGFuZCB3aXRoIHRoaXMgaW1hZ2UgSQo+IHNhdyB0aGUgZWFybGllciByZXBvcnRlZCBiZWhhdmlv
ciAoYSBwcmVzcyBvZiB0aGUgYnV0dG9uIHRyaWdnZXJzCj4gZmFjdG9yeSByZXNldCkuIEkgdGhl
biBhcHBsaWVkIHlvdXIgcGF0Y2ggb24gdG9wIG9mIG15IHRyZWUgYW5kIHRoZQo+IGJ1dHRvbiBu
b3cgd29ya3MgYXMgZXhwZWN0ZWQuIEEgc2hvcnQgcHJlc3MgdHJpZ2dlcnMgcmVib290LCBhbmQK
PiBob2xkaW5nIHRoZSBidXR0b24gZm9yIH41IHNlY29uZHMgdHJpZ2dlcnMgYSBmYWN0b3J5IHJl
c2V0LgoKQHluZXp6LCBAS3Jpc3RpYW4KClRoZSBBUE04MjF4eCBjaGVja3Mgb3V0IHdpdGggYm90
aCBhcyB3ZWxsLiBXaGlsZSB0aGVyZSBhcmUgc3B1cmlvdXMKZXZlbnRzIG9uIGVuYWJsaW5nIHRo
ZSBpbnRlcnJ1cHQgKG9uZSByZWxlYXNlZCBldmVudCksIAp0aGUgL2V0Yy9yYy5idXR0b24vIHNj
cmlwdHMgYXJlIHNldHVwIHRvIGhhbmRsZSB0aGF0LiBTbywgd2hpY2ggcGF0Y2gKc2hvdWxkIHdl
IHRha2UgYW5kIHdobyBnZXRzIHRoZSBtZXJnZSB0aGVtPyAoSSd2ZSBzZWVuIHRoYXQgeW5lenog
aGFzCm1vcmUgcGF0Y2hlcyBhcyB3ZWxsLikKCkNoZWVycywKQ2hyaXN0aWFuCi0tLQpGcm9tIDBh
NDZjOGFkYjRkMGRkMjg4YzZhNjQ2ZGQ1Mzc1N2M2ODA1ZTU4NGEgTW9uIFNlcCAxNyAwMDowMDow
MCAyMDAxCkZyb206ID0/VVRGLTg/cT9QZXRyPTIwPUM1PUEwdGV0aWFyPz0gPHluZXp6QHRydWUu
Y3o+CkRhdGU6IFNhdCwgOCBKdW4gMjAxOSAwMTowNTozMiArMDIwMApTdWJqZWN0OiBbUEFUQ0hd
IGdwaW8tYnV0dG9uLWhvdHBsdWc6IGdwaW8ta2V5czogZml4IGFsd2F5cyBtaXNzaW5nIGZpcnN0
CiBldmVudApNSU1FLVZlcnNpb246IDEuMApDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJz
ZXQ9VVRGLTgKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdAoKQ29tbWl0IGFmYzA1NmQ3
ZGM4MyAoImdwaW8tYnV0dG9uLWhvdHBsdWc6IHN1cHBvcnQgaW50ZXJydXB0CnByb3BlcnRpZXMi
KSBjaGFuZ2VkIHRoZSBncGlvLWtleXMgaW50ZXJydXB0IGhhbmRsaW5nIGxvZ2ljIGluIGEgd2F5
LAp0aGF0IGl0IGFsd2F5cyBtaXNzZXMgZmlyc3QgZXZlbnQsIHdoaWNoIGNhdXNlcyBpc3N1ZXMg
d2l0aCByYy5idXR0b24Kc2NyaXB0cywgc28gdGhpcyBwYXRjaCByZXN0b3JlcyB0aGUgcHJldmlv
dXMgYmVoYXZpb3VyLgoKRml4ZXM6IGFmYzA1NmQ3ZGM4MyAoImdwaW8tYnV0dG9uLWhvdHBsdWc6
IHN1cHBvcnQgaW50ZXJydXB0IHByb3BlcnRpZXMiKQpSZXBvcnRlZC1ieTogS3Jpc3RpYW4gRXZl
bnNlbiA8a3Jpc3RpYW4uZXZlbnNlbkBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+ClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBMYW1wYXJ0ZXIg
PGNodW5rZWV5QGdtYWlsLmNvbT4gW2Ryb3Agc3RhdGUgY2hlY2tdCi0tLQogLi4uL2dwaW8tYnV0
dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYyAgICAgfCAxMSArKy0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9wYWNrYWdlL2tlcm5lbC9ncGlvLWJ1dHRvbi1ob3RwbHVnL3NyYy9ncGlvLWJ1dHRv
bi1ob3RwbHVnLmMgYi9wYWNrYWdlL2tlcm5lbC9ncGlvLWJ1dHRvbi1ob3RwbHVnL3NyYy9ncGlv
LWJ1dHRvbi1ob3RwbHVnLmMKaW5kZXggMTFjOTE0ZDRlZi4uNmRlOGY1NmNkZiAxMDA2NDQKLS0t
IGEvcGFja2FnZS9rZXJuZWwvZ3Bpby1idXR0b24taG90cGx1Zy9zcmMvZ3Bpby1idXR0b24taG90
cGx1Zy5jCisrKyBiL3BhY2thZ2Uva2VybmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8t
YnV0dG9uLWhvdHBsdWcuYwpAQCAtMzQ4LDE2ICszNDgsOSBAQCBzdGF0aWMgdm9pZCBncGlvX2tl
eXNfaXJxX3dvcmtfZnVuYyhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiB7CiAJc3RydWN0IGdw
aW9fa2V5c19idXR0b25fZGF0YSAqYmRhdGEgPSBjb250YWluZXJfb2Yod29yaywKIAkJc3RydWN0
IGdwaW9fa2V5c19idXR0b25fZGF0YSwgd29yay53b3JrKTsKLQlpbnQgc3RhdGUgPSBncGlvX2J1
dHRvbl9nZXRfdmFsdWUoYmRhdGEpOwogCi0JaWYgKHN0YXRlICE9IGJkYXRhLT5sYXN0X3N0YXRl
KSB7Ci0JCXVuc2lnbmVkIGludCB0eXBlID0gYmRhdGEtPmItPnR5cGUgPzogRVZfS0VZOwotCi0J
CWlmIChiZGF0YS0+bGFzdF9zdGF0ZSAhPSAtMSB8fCB0eXBlID09IEVWX1NXKQotCQkJYnV0dG9u
X2hvdHBsdWdfZXZlbnQoYmRhdGEsIHR5cGUsIHN0YXRlKTsKLQotCQliZGF0YS0+bGFzdF9zdGF0
ZSA9IHN0YXRlOwotCX0KKwlidXR0b25faG90cGx1Z19ldmVudChiZGF0YSwgYmRhdGEtPmItPnR5
cGUgPzogRVZfS0VZLAorCQkJICAgICBncGlvX2J1dHRvbl9nZXRfdmFsdWUoYmRhdGEpKTsKIH0K
IAogc3RhdGljIGlycXJldHVybl90IGJ1dHRvbl9oYW5kbGVfaXJxKGludCBpcnEsIHZvaWQgKl9i
ZGF0YSkKLS0gCjIuMjAuMQoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
