Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2DE99E6D
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 20:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kaVpotVshWoHidWNXBfsxEwq9JbT1ck0grjQPQwNqH0=; b=uOyc1XcNcWqt+A9YfWvnx0Mw6Q
	2GCeODiZ/Ul8sjrtPi7opzk68MwUon5hUDzLr0eiw/vcH9gKW7ubZqvfzhyQ3as4kOv+rLL5eXv1t
	3hpfxtsS+1/g8wkDsntLVBamfjiyRHHU7A0BEMe05n2MhbB5Wlxpc0p0qeKWa5+ZejNDWM50fopSf
	956BYI68mD+cmodoNhJ2gw7RnDKSCdLC1OBSjQo1VP60JdA3efC61FSpcy45jeRL+RtKTmJzCCXzt
	Gpngykrw4Qn60GaLeJAzsTaLqkF4e3FzdWD/sHjSvLjC7UVAZQWAt8dTl4CC2mAZVQ5+FXJ/zqyNR
	zmPW135A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rU6-0000Si-93; Thu, 22 Aug 2019 18:06:54 +0000
Received: from forward103j.mail.yandex.net ([2a02:6b8:0:801:2::106])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rTt-0000SI-Si
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 18:06:46 +0000
Received: from mxback10g.mail.yandex.net (mxback10g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:171])
 by forward103j.mail.yandex.net (Yandex) with ESMTP id B6B4B674027D;
 Thu, 22 Aug 2019 21:06:31 +0300 (MSK)
Received: from smtp2o.mail.yandex.net (smtp2o.mail.yandex.net
 [2a02:6b8:0:1a2d::26])
 by mxback10g.mail.yandex.net (nwsmtp/Yandex) with ESMTP id PCEjy7e3sv-6VqiBHRY;
 Thu, 22 Aug 2019 21:06:31 +0300
Received: by smtp2o.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 bfEi8x7UQf-6T9O55FG; Thu, 22 Aug 2019 21:06:30 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Yaroslav Petrov <info@lank.me>
Message-ID: <068afc56-4da4-36af-0b11-ece86740d428@lank.me>
Date: Thu, 22 Aug 2019 20:06:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:69.0) Gecko/20100101
 Thunderbird/69.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_110642_287931_EAB33A86 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:6b8:0:801:2:0:0:106 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0,
 skipped old beacon
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
Cc: greearb@candelatech.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gYWxsLAoKCkkgdXNlIE9wZW5XcnQgMTkuMDcgb24gQlQgSG9tZSBIdWIgNUEsIGJ1dCBp
dCBzZWFtcyBhdGgxMGstY3QgZHJpdmVyIGlzIApyZWFsbHkgdW5zdGFibGUgKGl0IHdvcmsgb25s
eSBmaXJzdCAyLTEwIG1pbnV0ZXMpLiBUaGUgYXRoMTBrIGRyaXZlciAKd29yayB3aXRob3V0IHBy
b2JsZW0uIENhbiBzb21lYm9keSBoZWxwIG1lIHdpdGggdGhpcyBpc3N1ZSA/CgoKLS0tLSBPcGVu
V3J0IDE5LjA3LVNOQVBTSE9ULCByMTAzMjMtN2QzMDAzMjZlZSAtLS0tCgpkbWVzZzoKLi4uClvC
oMKgIDE2LjUyMzY2OV0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IHFjYTk4OHggaHcyLjAgdGFy
Z2V0IDB4NDEwMDAxNmMgCmNoaXBfaWQgMHgwNDMyMDJmZiBzdWIgMDAwMDowMDAwClvCoMKgIDE2
LjUzMTU4NV0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IGtjb25maWcgZGVidWcgMCBkZWJ1Z2Zz
IDEgCnRyYWNpbmcgMCBkZnMgMSB0ZXN0bW9kZSAwClvCoMKgIDE2LjU0ODUyOF0gYXRoMTBrX3Bj
aSAwMDAwOjAyOjAwLjA6IGZpcm13YXJlIHZlciAKMTAuMS1jdC04eC1fX2ZXLTAyMi1mZGRkMDQx
YiBhcGkgMiBmZWF0dXJlcyAKd21pLTEwLngsaGFzLXdtaS1tZ210LXR4LGFkYXB0aXZlLWNjYSxt
ZnAsdHhzdGF0dXMtbm9hY2ssd21pLTEwLngtQ1QscmF0ZW1hc2stQ1QsdHhyYXRlLUNULGdldC10
ZW1wLUNULHR4LXJjLUNULGN1c3Qtc3RhdHMtQ1QscmV0cnktZ3QyLUNULHR4cmF0ZTItQ1QsYmVh
Y29uLWNiLUNULHdtaS1ibG9jay1hY2stQ1QgCmNyYzMyIDAxZDFmMTNlClvCoMKgIDE2LjYwMDUy
N10gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IERpcmVjdCBmaXJtd2FyZSBsb2FkIGZvciAKYXRo
MTBrL1FDQTk4OFgvaHcyLjAvYm9hcmQtMi5iaW4gZmFpbGVkIHdpdGggZXJyb3IgLTIKW8KgwqAg
MTYuNjA5NjU0XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogRmFsbGluZyBiYWNrIHRvIHVzZXIg
aGVscGVyClvCoMKgIDE2Ljg2NTkyNl0gZmlybXdhcmUgYXRoMTBrIVFDQTk4OFghaHcyLjAhYm9h
cmQtMi5iaW46IApmaXJtd2FyZV9sb2FkaW5nX3N0b3JlOiBtYXAgcGFnZXMgZmFpbGVkClvCoMKg
IDE2Ljg3NDE3Nl0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IGJvYXJkX2ZpbGUgYXBpIDEgYm1p
X2lkIE4vQSAKY3JjMzIgYmViYzdjMDgKW8KgwqAgMTcuNzU0NTk3XSBhdGgxMGtfcGNpIDAwMDA6
MDI6MDAuMDogMTAuMSB3bWkgaW5pdDogdmRldnM6IDE2IHBlZXJzOiAKMTI3wqAgdGlkOiAyNTYK
W8KgwqAgMTcuNzY5OTEwXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogd21pIHByaW50ICdQIDEy
OCBWIDggVCA0MTAnClvCoMKgIDE3Ljc3NDkwOF0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IHdt
aSBwcmludCAnbXNkdS1kZXNjOiAxNDI0wqAgCnN3LWNyeXB0OiAwIGN0LXN0YTogMCcKW8KgwqAg
MTcuNzgyNTQ4XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogd21pIHByaW50ICdhbGxvYyByZW06
IDI0NjQ4IAppcmFtOiAyNjE2OCcKW8KgwqAgMTcuODQ2NzAwXSBhdGgxMGtfcGNpIDAwMDA6MDI6
MDAuMDogaHR0LXZlciAyLjEgd21pLW9wIDIgaHR0LW9wIDIgCmNhbCBmaWxlIG1heC1zdGEgMTI4
IHJhdyAwIGh3Y3J5cHRvIDEKW8KgwqAgMTcuODU4MTcyXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAu
MDogTk9URTrCoCBGaXJtd2FyZSBEQkdMT0cgb3V0cHV0IApkaXNhYmxlZCBpbiBkZWJ1Z19tYXNr
OiAweDEwMDAwMDAwCi4uLgpbIDkzOTcuMDUyMzY2XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDog
U1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTcuMTU0Nzcz
XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBl
ZCAKb2xkIGJlYWNvbgpbIDkzOTcuMjU3MTc0XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dC
QSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTcuMzU5NTk2XSBh
dGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAK
b2xkIGJlYWNvbgpbIDkzOTcuNDYxOTkyXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBv
dmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTcuNTY0Mzk2XSBhdGgx
MGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xk
IGJlYWNvbgpbIDkzOTcuNjY2ODA1XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVy
cnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTcuNzY5MjE0XSBhdGgxMGtf
cGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJl
YWNvbgpbIDkzOTcuODcxNjQ2XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVu
IG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTcuOTc0MDM2XSBhdGgxMGtfcGNp
IDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNv
bgpbIDkzOTguMDc2NDQ1XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9u
IHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTguMTc4ODQ0XSBhdGgxMGtfcGNpIDAw
MDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpb
IDkzOTguMjgxMjU5XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZk
ZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTguMzgzNjc1XSBhdGgxMGtfcGNpIDAwMDA6
MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkz
OTguNDg2MDcxXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYg
MCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTguNTg4NDc4XSBhdGgxMGtfcGNpIDAwMDA6MDI6
MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTgu
NjkwODgzXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwg
c2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTguNzkzMzAxXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAu
MDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTguODk1
NzA4XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tp
cHBlZCAKb2xkIGJlYWNvbgpbIDkzOTguOTk4MTEyXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDog
U1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTkuMTAwNTEy
XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBl
ZCAKb2xkIGJlYWNvbgpbIDkzOTkuMjAyOTE4XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dC
QSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTkuMzA1MzI4XSBh
dGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAK
b2xkIGJlYWNvbgpbIDkzOTkuNDA3NzQwXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBv
dmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTkuNTEwMTQ5XSBhdGgx
MGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xk
IGJlYWNvbgpbIDkzOTkuNjEyNTQzXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVy
cnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTkuNzE0OTU5XSBhdGgxMGtf
cGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJl
YWNvbgpbIDkzOTkuODE3MzY2XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVu
IG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDkzOTkuOTE5NzgwXSBhdGgxMGtfcGNp
IDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNv
bgpbIDk0MDAuMDIyMTc3XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9u
IHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDAuMTI0NTkwXSBhdGgxMGtfcGNpIDAw
MDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpb
IDk0MDAuMTg0NDE3XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogd21pIGNvbW1hbmQgMzY4OTMg
dGltZW91dCwgCnJlc3RhcnRpbmcgaGFyZHdhcmUKWyA5NDAwLjE5MTA5Nl0gYXRoMTBrX3BjaSAw
MDAwOjAyOjAwLjA6IGZhaWxlZCB0byBkZWxldGUgcGVlciAKOTk6OTk6OTk6OTk6OTk6OTkgZm9y
IHZkZXYgMDogLTExClsgOTQwMC4xOTk1MjddIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBmb3Vu
ZCBzdGEgcGVlciA5OTo5OTo5OTo5OTo5OTo5OSAKKHB0ciA4Njk4YTYwMCBpZCAzNjEpIGVudHJ5
IG9uIHZkZXYgMCBhZnRlciBpdCB3YXMgc3VwcG9zZWRseSByZW1vdmVkClsgOTQwMC4yMTIxMDld
IC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQpbIDk0MDAuMjE2NzkxXSBXQVJO
SU5HOiBDUFU6IDEgUElEOiAzNTk5IGF0IApiYWNrcG9ydHMtNC4xOS42Ni0xL25ldC9tYWM4MDIx
MS9zdGFfaW5mby5jOjEwMDQgCnN0YV9zZXRfc2luZm8rMHhjZGMvMHhkODggW21hYzgwMjExXQpb
IDk0MDAuMjI3ODI1XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZk
ZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDAuMjM1MTUzXSBNb2R1bGVzIGxpbmtlZCBp
bjogYXRoOWsgYXRoOWtfY29tbW9uIGF0aDlrX2h3IGF0aDEwa19wY2kgCmF0aDEwa19jb3JlIGF0
aCBwcHBvZSBuZl9jb25udHJhY2tfaXB2NiBtYWM4MDIxMSBpcHRhYmxlX25hdCBpcHRfUkVKRUNU
IAppcHRfTUFTUVVFUkFERSBjZmc4MDIxMSB4dF90aW1lIHh0X3RjcHVkcCB4dF9zdGF0ZSB4dF9u
YXQgeHRfbXVsdGlwb3J0IAp4dF9tYXJrIHh0X21hYyB4dF9saW1pdCB4dF9jb25udHJhY2sgeHRf
Y29tbWVudCB4dF9UQ1BNU1MgeHRfUkVESVJFQ1QgCnh0X0xPRyB4dF9GTE9XT0ZGTE9BRCB3aXJl
Z3VhcmQgdW1zX3VzYmF0IHVtc19zZGRyNTUgdW1zX3NkZHIwOSAKdW1zX2thcm1hIHVtc19qdW1w
c2hvdCB1bXNfaXNkMjAwIHVtc19mcmVlY29tIHVtc19kYXRhZmFiIHVtc19jeXByZXNzIAp1bXNf
YWxhdWRhIHBwcG94IHBwcF9hc3luYyBvd2xfbG9hZGVyIG5mX3JlamVjdF9pcHY0IG5mX25hdF9y
ZWRpcmVjdCAKbmZfbmF0X21hc3F1ZXJhZGVfaXB2NCBuZl9jb25udHJhY2tfaXB2NCBuZl9uYXRf
aXB2NCBuZl9uYXQgbmZfbG9nX2lwdjQgCm5mX2Zsb3dfdGFibGVfaHcgbmZfZmxvd190YWJsZSBu
Zl9kZWZyYWdfaXB2NiBuZl9kZWZyYWdfaXB2NCAKbmZfY29ubnRyYWNrX3J0Y2FjaGUgbmZfY29u
bnRyYWNrIGx0cV9kZXVfdnI5IGlwdGFibGVfbWFuZ2xlIAppcHRhYmxlX2ZpbHRlciBpcF90YWJs
ZXMgY3JjX2NjaXR0IGNvbXBhdCBkcnZfZHNsX2NwZV9hcGkgZHJ2X21laV9jcGUgCmxlZHRyaWdf
b25lc2hvdCBsZWR0cmlnX2dwaW8geHRfc2V0IGlwX3NldF9saXN0X3NldCBpcF9zZXRfaGFzaF9u
ZXRwb3J0bmV0ClsgOTQwMC4zMDc5OTFdwqAgaXBfc2V0X2hhc2hfbmV0cG9ydCBpcF9zZXRfaGFz
aF9uZXRuZXQgCmlwX3NldF9oYXNoX25ldGlmYWNlIGlwX3NldF9oYXNoX25ldCBpcF9zZXRfaGFz
aF9tYWMgCmlwX3NldF9oYXNoX2lwcG9ydG5ldCBpcF9zZXRfaGFzaF9pcHBvcnRpcCBpcF9zZXRf
aGFzaF9pcHBvcnQgCmlwX3NldF9oYXNoX2lwbWFyayBpcF9zZXRfaGFzaF9pcCBpcF9zZXRfYml0
bWFwX3BvcnQgaXBfc2V0X2JpdG1hcF9pcG1hYyAKaXBfc2V0X2JpdG1hcF9pcCBpcF9zZXQgbmZu
ZXRsaW5rIG5mX2xvZ19pcHY2IG5mX2xvZ19jb21tb24gCmlwNnRhYmxlX21hbmdsZSBpcDZ0YWJs
ZV9maWx0ZXIgaXA2X3RhYmxlcyBpcDZ0X1JFSkVDVCB4X3RhYmxlcyAKbmZfcmVqZWN0X2lwdjYg
cHBwb2F0bSBwcHBfZ2VuZXJpYyBzbGhjIGlwNl91ZHBfdHVubmVsIHVkcF90dW5uZWwgYnIyNjg0
IAphdG0gbmxzX3V0ZjggZHJ2X2lmeG9zIHVzYl9zdG9yYWdlIGR3YzIgbGVkdHJpZ190cmFuc2ll
bnQgc2RfbW9kIApzY3NpX21vZCBncGlvX2J1dHRvbl9ob3RwbHVnIGV4dDQgbWJjYWNoZSBqYmQy
IGNyYzMyY19nZW5lcmljClsgOTQwMC4zNTY3MjJdIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBT
V0JBIG92ZXJydW4gb24gdmRldiAwLCBza2lwcGVkIApvbGQgYmVhY29uClsgOTQwMC4zNjQzMDNd
IENQVTogMSBQSUQ6IDM1OTkgQ29tbTogaG9zdGFwZCBOb3QgdGFpbnRlZCA0LjE0LjEzOCAjMApb
IDk0MDAuMzcwMDI0XSBTdGFjayA6IDAwMDAwMDAwIDg3N2UzMDAwIDAwMDAwMDI4IDgwMDgxNWE4
IDgwNjcwMDAwIAo4MDYxNTkwYyAwMDAwMDAwMCAwMDAwMDAwMApbIDk0MDAuMzc4Mzc2XcKgwqDC
oMKgwqDCoMKgwqAgODA1ZGJkYzQgODUxZDNhZTQgODdkYTU5MmMgODA2NTA2YTcgODA1ZDZjNTQg
CjAwMDAwMDAxIDg1MWQzYTg4IDc0YWIzYzk3ClsgOTQwMC4zODY3MzNdwqDCoMKgwqDCoMKgwqDC
oCAwMDAwMDAwMCAwMDAwMDAwMCA4MDdiMDAwMCAwMDAxMDAwMCA4MDdhODhiMCAKMDAwMDAwMDAg
MDAwMDAwMDcgMDAwMDAwMDAKWyA5NDAwLjM5NTA4N13CoMKgwqDCoMKgwqDCoMKgIDAwMDAwMWQz
IGQ1MDAwMDAwIDAwMDAwMWQyIDAwMDAwMDAwIDgwMDAwMDAwIAo4MDY3MDAwMCAwMDAwMDAwMCAw
MDAwMDAwOQpbIDk0MDAuNDAzNDQzXcKgwqDCoMKgwqDCoMKgwqAgODY4MDhlOWMgMDAwMDAzZWMg
ODUxZDNjYWMgODc3ZTMwMDAgMDAwMDAwMDEgCjAwMDAwMDAwIDAwMDAwMDA0IDgwN2EwMDA0Clsg
OTQwMC40MTE3OTldwqDCoMKgwqDCoMKgwqDCoCAuLi4KWyA5NDAwLjQxNDI0MF0gQ2FsbCBUcmFj
ZToKWyA5NDAwLjQxNjY5M10gWzw4MDAxMTY2ND5dIHNob3dfc3RhY2srMHg1OC8weDEwMApbIDk0
MDAuNDIxMTU1XSBbPDgwNGM4ODI0Pl0gZHVtcF9zdGFjaysweGU0LzB4MTIwClsgOTQwMC40MjU1
ODhdIFs8ODAwMzcwMTA+XSBfX3dhcm4rMHhlMC8weDE4MApbIDk0MDAuNDI5NjczXSBbPDgwMDM3
MTQwPl0gd2Fybl9zbG93cGF0aF9udWxsKzB4MWMvMHgyYwpbIDk0MDAuNDM0ODMyXSBbPDg2ODA4
ZTljPl0gc3RhX3NldF9zaW5mbysweGNkYy8weGQ4OCBbbWFjODAyMTFdClsgOTQwMC40NDA5NzRd
IGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCBza2lwcGVk
IApvbGQgYmVhY29uClsgOTQwMC40NDg2NThdIC0tLVsgZW5kIHRyYWNlIDIxNGFhYTQ5YmQ3Zjlk
ZTcgXS0tLQpbIDk0MDAuNTM0MjI4XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVy
cnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDAuNjM2NjIwXSBhdGgxMGtf
cGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJl
YWNvbgpbIDk0MDAuNzM5MDMzXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVu
IG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDAuODQxNDMyXSBhdGgxMGtfcGNp
IDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNv
bgpbIDk0MDAuOTQzODQ1XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9u
IHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDEuMDQ2MjU3XSBhdGgxMGtfcGNpIDAw
MDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpb
IDk0MDEuMTQ4NjYwXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZk
ZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDEuMjUxMDc5XSBhdGgxMGtfcGNpIDAwMDA6
MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0
MDEuMzUzNDc1XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYg
MCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDEuNDU1ODg1XSBhdGgxMGtfcGNpIDAwMDA6MDI6
MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDEu
NTU4MjgxXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwg
c2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDEuNjYwNjg1XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAu
MDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDEuNzYz
MDkyXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tp
cHBlZCAKb2xkIGJlYWNvbgpbIDk0MDEuODY1NTA2XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDog
U1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDEuOTY3OTE2
XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBl
ZCAKb2xkIGJlYWNvbgpbIDk0MDIuMDcwMzE3XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dC
QSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDIuMTcyNzI2XSBh
dGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAK
b2xkIGJlYWNvbgpbIDk0MDIuMjc1MTMwXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBv
dmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDIuMzc3NTM4XSBhdGgx
MGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xk
IGJlYWNvbgpbIDk0MDIuNDc5OTQwXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVy
cnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDIuNTgyMzQ5XSBhdGgxMGtf
cGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJl
YWNvbgpbIDk0MDIuNjg0NzU2XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVu
IG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDIuNzg3MTY3XSBhdGgxMGtfcGNp
IDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNv
bgpbIDk0MDIuODg5NTY5XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9u
IHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDIuOTkxOTY5XSBhdGgxMGtfcGNpIDAw
MDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpb
IDk0MDMuMDk0MzcyXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZk
ZXYgMCwgc2tpcHBlZCAKb2xkIGJlYWNvbgpbIDk0MDMuMTg5NzE4XSBhdGgxMGtfcGNpIDAwMDA6
MDI6MDAuMDogcmVtb3ZpbmcgcGVlciwgY2xlYW51cC1hbGwsIApkZWxldGluZzogcGVlciA4Njk4
YjYwMCB2ZGV2OiAwIGFkZHI6IDU0OjY0OjAwOjAwOjAwOjAwClsgOTQwMy4zMDY3MzBdIGllZWU4
MDIxMSBwaHkwOiBIYXJkd2FyZSByZXN0YXJ0IHdhcyByZXF1ZXN0ZWQKWyA5NDAzLjMxMDk5Ml0g
YXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IGZhaWxlZCB0byBzZXQgY3RzIHByb3RlY3Rpb24gZm9y
IAp2ZGV2IDA6IC0xNDMKWyA5NDAzLjMxODUwM10gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IGZh
aWxlZCB0byBzZXQgcHJlYW1ibGUgZm9yIHZkZXYgCjA6IC0xNDMKWyA5NDAzLjMyNTU0Ml0gYXRo
MTBrX3BjaSAwMDAwOjAyOjAwLjA6IGZhaWxlZCB0byBzZXQgbWdtdCB0eCByYXRlIC0xNDMKWyA5
NDA0LjMzNjc3Ml0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IDEwLjEgd21pIGluaXQ6IHZkZXZz
OiAxNiBwZWVyczogCjEyN8KgIHRpZDogMjU2ClsgOTQwNC4zNTIxMjJdIGF0aDEwa19wY2kgMDAw
MDowMjowMC4wOiB3bWkgcHJpbnQgJ1AgMTI4IFYgOCBUIDQxMCcKWyA5NDA0LjM1NjgwMF0gYXRo
MTBrX3BjaSAwMDAwOjAyOjAwLjA6IHdtaSBwcmludCAnbXNkdS1kZXNjOiAxNDI0wqAgCnN3LWNy
eXB0OiAwIGN0LXN0YTogMCcKWyA5NDA0LjM2NTE5OV0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6
IHdtaSBwcmludCAnYWxsb2MgcmVtOiAyNDY0OCAKaXJhbTogMjYxNjgnClsgOTQwNC40MzE0NTNd
IGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBwZGV2IHBhcmFtIDAgbm90IHN1cHBvcnRlZCBieSAK
ZmlybXdhcmUKWyA5NDA0LjQ1NDQ4NF0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IGRldmljZSBz
dWNjZXNzZnVsbHkgcmVjb3ZlcmVkCgoKb3BrZyBsaXN0IHwgZ3JlcCAtZSBob3N0IC1lIHdwYSAt
ZSBhdGgKCmF0aDEway1maXJtd2FyZS1xY2E5ODh4LWN0IC0gMjAxOC0xMC0xMC1kMzY2YjgwZC0x
Cmhvc3RhcGQtY29tbW9uIC0gMjAxOC0xMi0wMi1jMmM2YzAxYi02Cmhvc3RhcGQtb3BlbnNzbCAt
IDIwMTgtMTItMDItYzJjNmMwMWItNgpob3N0YXBkLXV0aWxzIC0gMjAxOC0xMi0wMi1jMmM2YzAx
Yi02Cmttb2QtYXRoIC0gNC4xNC4xMzgrNC4xOS42Ni0xLTEKa21vZC1hdGgxMGstY3QgLSA0LjE0
LjEzOCsyMDE5LTA1LTA4LWY5OGI2ZGM0LTEKa21vZC1hdGg5ayAtIDQuMTQuMTM4KzQuMTkuNjYt
MS0xCmttb2QtYXRoOWstY29tbW9uIC0gNC4xNC4xMzgrNC4xOS42Ni0xLTEKd3BhLWNsaSAtIDIw
MTgtMTItMDItYzJjNmMwMWItNgp3cGEtc3VwcGxpY2FudC1tZXNoLW9wZW5zc2wgLSAyMDE4LTEy
LTAyLWMyYzZjMDFiLTYKCgpjYXQgL2V0Yy9jb25maWcvd2lyZWxlc3MKCmNvbmZpZyB3aWZpLWRl
dmljZSAncmFkaW8wJwogwqDCoMKgIG9wdGlvbiB0eXBlICdtYWM4MDIxMScKIMKgwqDCoCBvcHRp
b24gY2hhbm5lbCAnMzYnCiDCoMKgwqAgb3B0aW9uIGh3bW9kZSAnMTFhJwogwqDCoMKgIG9wdGlv
biBwYXRoICdwY2kwMDAwOjAxLzAwMDA6MDE6MDAuMC8wMDAwOjAyOjAwLjAnCiDCoMKgwqAgb3B0
aW9uIGh0bW9kZSAnVkhUODAnCiDCoMKgwqAgb3B0aW9uIHR4cG93ZXIgJzE3JwogwqDCoMKgIG9w
dGlvbiBjb3VudHJ5ICdERScKIMKgwqDCoCBvcHRpb24gbGVnYWN5X3JhdGVzICcwJwogwqDCoMKg
IG9wdGlvbiBkaXN0YW5jZSAnMjAnCgpjb25maWcgd2lmaS1pZmFjZSAnZGVmYXVsdF9yYWRpbzAn
CiDCoMKgwqAgb3B0aW9uIGRldmljZSAncmFkaW8wJwogwqDCoMKgIG9wdGlvbiBuZXR3b3JrICds
YW4nCiDCoMKgwqAgb3B0aW9uIG1vZGUgJ2FwJwogwqDCoMKgIG9wdGlvbiBzc2lkICdXSUZJMScK
IMKgwqDCoCBvcHRpb24gZW5jcnlwdGlvbiAnc2FlJwogwqDCoMKgIG9wdGlvbiBrZXkgJzExMTEx
MTExMTExMTExMTEnCgpjb25maWcgd2lmaS1kZXZpY2UgJ3JhZGlvMScKIMKgwqDCoCBvcHRpb24g
dHlwZSAnbWFjODAyMTEnCiDCoMKgwqAgb3B0aW9uIGNoYW5uZWwgJzExJwogwqDCoMKgIG9wdGlv
biBod21vZGUgJzExZycKIMKgwqDCoCBvcHRpb24gcGF0aCAncGNpMDAwMDowMC8wMDAwOjAwOjBl
LjAnCiDCoMKgwqAgb3B0aW9uIGh0bW9kZSAnSFQyMCcKIMKgwqDCoCBvcHRpb24gY291bnRyeSAn
REUnCiDCoMKgwqAgb3B0aW9uIGxlZ2FjeV9yYXRlcyAnMCcKIMKgwqDCoCBvcHRpb24gZGlzdGFu
Y2UgJzMwJwogwqDCoMKgIG9wdGlvbiB0eHBvd2VyICcxNCcKCmNvbmZpZyB3aWZpLWlmYWNlICdk
ZWZhdWx0X3JhZGlvMScKIMKgwqDCoCBvcHRpb24gZGV2aWNlICdyYWRpbzEnCiDCoMKgwqAgb3B0
aW9uIG5ldHdvcmsgJ2xhbicKIMKgwqDCoCBvcHRpb24gbW9kZSAnYXAnCiDCoMKgwqAgb3B0aW9u
IHNzaWQgJ1dJRkkyJwogwqDCoMKgIG9wdGlvbiBlbmNyeXB0aW9uICdzYWUtbWl4ZWQnCiDCoMKg
wqAgb3B0aW9uIGtleSAnMTExMTExMTExMTExMTExMScKIMKgwqDCoCBvcHRpb24gaWVlZTgwMjEx
ciAnMScKIMKgwqDCoCBvcHRpb24gbmFzaWQgJzExMTExMTExMTExMScKIMKgwqDCoCBvcHRpb24g
bW9iaWxpdHlfZG9tYWluICcyMzQ1JwogwqDCoMKgIG9wdGlvbiBmdF9vdmVyX2RzICcxJwogwqDC
oMKgIG9wdGlvbiBmdF9wc2tfZ2VuZXJhdGVfbG9jYWwgJzEnCiDCoMKgwqAgb3B0aW9uIHIxX2tl
eV9ob2xkZXIgJzU0NjREOTAxQ0UyNCcKIMKgwqDCoCBsaXN0IHIwa2ggCicxMToxMToxMToxMTox
MToxMSwxMTExMTExMTExMTEsMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAnCiDCoMKg
wqAgbGlzdCByMGtoIAonMjI6MjI6MjI6MjI6MjI6MjIsMjIyMjIyMjIyMjIyLDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwJwogwqDCoMKgIGxpc3QgcjFraCAKJzExOjExOjExOjExOjEx
OjExLDExOjExOjExOjExOjExOjExLDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwJwog
wqDCoMKgIGxpc3QgcjFraCAKJzIyOjIyOjIyOjIyOjIyOjIyLDIyOjIyOjIyOjIyOjIyOjIyLDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwJwoKQmVzdCByZWdhcmRzCllhcm9zbGF2CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
