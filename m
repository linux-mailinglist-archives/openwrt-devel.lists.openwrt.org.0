Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6911CC697
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 06:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4TbeGEJw1mLJFOYyjAABUiKU9IqrHKSt4gy19B3yF8=; b=Fs8aIJuR7yzPoA
	qjwiTurkP0E0dgwHL0C8ZAtnIwVghKZyx/lqAxLD62jV/Biu6wkerTGLLpbi4FKtXTgu828mq6D9+
	HV76UVY2D8cyY4MUQqeOZZPPdfSkbsuzPReOqMQus4FrxjOmO1TKmLsy438baaj1apRCrc00MC0zk
	TqcBITzgi9ggKUWvmNZk6SQQFjFoMAub6qxbGbByTg2Inbi8WR4iepDWrnYXTX5SbM6RdA+/LPr55
	tLvCpbnCrkAqFCp4f6txZUW4Cm1pdSU72mXEdR782QIZs1VCVM31coVL2czPuPnmXl0X/yiHHp24m
	Kif44YIE/GAX31B2/eFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXdZH-0000vF-Lx; Sun, 10 May 2020 04:27:59 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXdZB-0000uR-NA
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 04:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589084865;
 bh=LguPuOsSBdxBLplh8ifbISfCdC8XRHqHD1+K0bddq8o=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=gp+zi6B6xNmx4gKZcTVsKjqM2FG0TQG0P9K1LZJ6hJW0QBlqKVLJjBTofVl+gr8io
 Ur1k+sxvumXO2nG/odvZL8L9fVD6LUDNEl+25NsTPMiOe8oa+abuH2cdi2kDG2qBPd
 fHvkOirD78ob1t/BrGXPVSPy3L6fpd74qXHgWwjQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([87.182.154.53]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MYvcG-1jc9nl0I4m-00Upmf; Sun, 10
 May 2020 06:27:45 +0200
Date: Sun, 10 May 2020 06:27:43 +0200
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: Petr =?UTF-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Message-ID: <20200510062743.6a0d1025@mir>
In-Reply-To: <20200504130757.12736-1-ynezz@true.cz>
References: <20200504130757.12736-1-ynezz@true.cz>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:bmH8lVInatJ9yGwvgN2WLb37V6tgQ+OulVjz/Bxg2BBR7M1zxYF
 O1pJJneUvXGFhfM2toDqDJAuh52dfRnORREXdJht2TzFkd/d+ssn7NZwmmcqnYUE+2I91za
 66r0mtxtXw/DkjXL5oe4Bzfn7apFvtfEoM06kAbtizFZi/fnuqgy0+1LoBvOTiT++UdypAJ
 q9hJRLaCxS64Ymr2M8chg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MSMNS3ktWTM=:2xJoBls02tCmRKqib8JsJh
 y9JGqov4PQZoHHWIlHCMEa4iuwxEQy6rURGNc2NrXcxkAwY3ySQZsPvoa3m53wHNwCLE9+fb+
 p8aqGu351ITD4AfA24LyM/2xmdBjOC3pkjex0Bb++2Mm69oQ5+wsSsNwj4mzfaTTWJDW6Yi/1
 yQtwTWtJgvpZoAZFLNs0yU4xDplZlCQSfPmsirwvpo5bVXp9S3Xng/jHCHat/4eIGVRlPxpsX
 +4C8u2X6acdwmdA2OY367q/FSNYRt/r+fpHykrv1642ClqZUQy59VpCvdMrjCv55Zp+11Bn1Z
 0Q4vGoX1aqsCSYC9oD2oJJrlvACBZDOPFk5Gihm7Uw7JJ8lILQooUsq75UUnXuW0IXBy8Q91e
 vJ8afbN+VcS+7ThYuajzw4swucD5zGyAPXGePZ338sByuHgrO1QztfZNpYyL20K+3yAlhxgKo
 +NrSGYGGw0k1ZLmOLyT3LPvBF/4s+a9tbQpCkN0393q6msSczZ/box8lK/NqX1WeihlAg34go
 jaIYtu9sz08KnGs2yhVulMQSMd0xQIumOr+5Ga5Zfb2QYWdfkLmBoFfyRqD9VCmIGxo5c31Gg
 PtTM9Md/5KuXjNH/oegJupaR76QClwc5AcZzq7KQIF8Y4+CeBB0Upe0xoac2DPRN/2eoaDN6w
 8sQ2fDR9JStg3mhkfchPedFiWoK58jPAPX4GBkLQunbyGs3kXi3qJQ6WL8wPHmK2jb5MAcYmD
 rugh63a8i1/9icmHgoAJi0IuBOp37eEibVD0J40YshGysbLy32fZjfoW14XMRqfCEI0fRtRbB
 oT5KPn/hficZJ3Mg4oNAQL0zjgOVPfeKviduF6VcoJPfUHlDKWVWqUeUctgLE1C7UKzC+JJut
 UvgwrberIEYRW/2FuqnQZod4IYYFkUPi3e4FXc05x97b2P9mAN4tBQJVc0bfM80HWhuFhvQwL
 zqyE8u/6jD9cUYnlEwMXfs7X1lCY/FssBN5CA6PHRxnO3I0XlHkdoVXoOWFfL7Mf/hqyjNYyn
 LnSyOmHXbtLVfrVS/p/dnJApby45QTclRqTO2hWgmS15urxrobY0YvWn8PNHhNItCGiae8uRx
 k44zc5c2vFyubtb+SCI8vcX0GbvWInQgR5USjdnlUrrhWNLrgL1SzR2nCeGfSyehwjiCCykQf
 JauO98jMNFZrpx+5NE9i7kJa5+SvkcJ+j+Spo9zzcVYTPL8PbkoM7P+OGqvz0hwXCCJI3Gc+H
 DJAT+90WZIwUb/TvG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_212754_091200_AB4DC583 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [s.l-h[at]gmx.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] hostapd: update to latest Git
 hostap_2_9-1113-gc54a5e96b505
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

SGkKCk9uIDIwMjAtMDUtMDQsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gQnVtcCBwYWNrYWdlIHRv
IGxhdGVzdCB1cHN0cmVhbSBHaXQgSEVBRCB3aGljaCBpcyBjb21taXQgYzU0YTVlOTZiNTA1Cj4g
KCJSYW5kb21pemUgR0FTIGRpYWxvZyB0b2tlbiIpLiAgU2luY2UgbGFzdCB1cGRhdGUgdGhlcmUg
d2FzIDExMTMKPiBjb21taXRzIGRvbmUgaW4gdGhlIHVwc3RyZWFtIHRyZWUgd2l0aCA1MzcgZmls
ZXMgY2hhbmdlZCwKPiAzNzg3NCBpbnNlcnRpb25zLCAxNDE1OSBkZWxldGlvbnMuCgpJJ3ZlIGJl
ZW4gdGVzdGluZyB0aGlzIGFuZCBIYXVrZSdzIG1hYzgwMjExLTUuNiBicmFuY2ggCigxYzViMjU2
OWRkM2U2NDY1YTUzZDhjMTEyNTE3NDk2Y2VmNWZhMjk0KSBvbiB0b3Agb2YgcjEzMjA4LTQyNmZi
OGNmODQuCk9uIGJvdGggaXBxODA2eCAobmJnNjgxNy8gUUNBOTk4NC8gYXRoMTBrLCBXRFMtQVAv
IFdQQTJQU0svIENDTVAgKyBXUEEzU0FFCm1peGVkKSBhbmQgaXBxNDB4eCAobWFwLWFjMjIwMC8g
aXBxNDAxOS8gYXRoMTBrLCBXRFMtY2xpZW50LyBXUEEzU0FFIG9ubHkpLApJJ20gZ2V0dGluZyBh
IGNvbnN0YW50IChldmVyeSAzcykgc3RyZWFtIG9mIAoKZGFlbW9uLndhcm4gaG9zdGFwZDogbmw4
MDIxMTogTm90IGVub3VnaCByb29tIGZvciBhbGwgQUtNIHN1aXRlcyAobnVtX3N1aXRlcz01ID4g
Tkw4MDIxMV9NQVhfTlJfQUtNX1NVSVRFUykKCndhcm5pbmdzIChXUEFfRU5BQkxFX1dFUCBkaXNh
YmxlZCkuCgphdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogcWNhOTk4NC9xY2E5OTk0IGh3MS4wIHRh
cmdldCAweDAxMDAwMDAwIGNoaXBfaWQgMHgwMDAwMDAwMCBzdWIgMTY4YzpjYWZlCmF0aDEwa19w
Y2kgMDAwMDowMTowMC4wOiBrY29uZmlnIGRlYnVnIDAgZGVidWdmcyAxIHRyYWNpbmcgMCBkZnMg
MSB0ZXN0bW9kZSAxCmF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBmaXJtd2FyZSB2ZXIgMTAuNC0z
LjEwLTAwMDQ3IGFwaSA1IGZlYXR1cmVzIG5vLXAycCxtZnAscGVlci1mbG93LWN0cmwsYnRjb2V4
LXBhcmFtLGFsbG93cy1tZXNoLWJjYXN0LG5vLXBzIGNyYzMyIDE5Y2E2ZGYyCmF0aDEwa19wY2kg
MDAwMDowMTowMC4wOiBib2FyZF9maWxlIGFwaSAyIGJtaV9pZCAwOjEgY3JjMzIgODU0OTg3MzQK
YXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IGh0dC12ZXIgMi4yIHdtaS1vcCA2IGh0dC1vcCA0IGNh
bCBwcmUtY2FsLWZpbGUgbWF4LXN0YSA1MTIgcmF3IDAgaHdjcnlwdG8gMQoKYXRoMTBrX2FoYiBh
MDAwMDAwLndpZmk6IHFjYTQwMTkgaHcxLjAgdGFyZ2V0IDB4MDEwMDAwMDAgY2hpcF9pZCAweDAw
M2IwMGZmIHN1YiAwMDAwOjAwMDAKYXRoMTBrX2FoYiBhMDAwMDAwLndpZmk6IGtjb25maWcgZGVi
dWcgMCBkZWJ1Z2ZzIDEgdHJhY2luZyAwIGRmcyAxIHRlc3Rtb2RlIDEKYXRoMTBrX2FoYiBhMDAw
MDAwLndpZmk6IGZpcm13YXJlIHZlciAxMC40LTMuNi0wMDE0MCBhcGkgNSBmZWF0dXJlcyBuby1w
MnAsbWZwLHBlZXItZmxvdy1jdHJsLGJ0Y29leC1wYXJhbSxhbGxvd3MtbWVzaC1iY2FzdCxuby1w
cyBjcmMzMiBiYTc5Yjc0NgphdGgxMGtfYWhiIGEwMDAwMDAud2lmaTogYm9hcmRfZmlsZSBhcGkg
MiBibWlfaWQgMDoyMCBjcmMzMiBlMmRmYWE5MQphdGgxMGtfYWhiIGEwMDAwMDAud2lmaTogaHR0
LXZlciAyLjIgd21pLW9wIDYgaHR0LW9wIDQgY2FsIHByZS1jYWwtZmlsZSBtYXgtc3RhIDUxMiBy
YXcgMCBod2NyeXB0byAxCgpTYW1lIHJlc3VsdHMgdXNpbmcgYXRoMTBrLWN0LyBjdC1odHQgZmly
bXdhcmU6CgphdGgxMGsgNS4xIGRyaXZlciwgb3B0aW1pemVkIGZvciBDVCBmaXJtd2FyZSwgcHJv
YmluZyBwY2kgZGV2aWNlOiAweDQ2LgphdGgxMGtfcGNpIDAwMDE6MDE6MDAuMDogZW5hYmxpbmcg
ZGV2aWNlICgwMTQwIC0+IDAxNDIpCmF0aDEwa19wY2kgMDAwMTowMTowMC4wOiBlbmFibGluZyBi
dXMgbWFzdGVyaW5nCmF0aDEwa19wY2kgMDAwMTowMTowMC4wOiBwY2kgaXJxIG1zaSBvcGVyX2ly
cV9tb2RlIDIgaXJxX21vZGUgMCByZXNldF9tb2RlIDAKYXRoMTBrX3BjaSAwMDAxOjAxOjAwLjA6
IHFjYTk5ODQvcWNhOTk5NCBodzEuMCB0YXJnZXQgMHgwMTAwMDAwMCBjaGlwX2lkIDB4MDAwMDAw
MDAgc3ViIDE2OGM6Y2FmZQphdGgxMGtfcGNpIDAwMDE6MDE6MDAuMDoga2NvbmZpZyBkZWJ1ZyAw
IGRlYnVnZnMgMSB0cmFjaW5nIDAgZGZzIDEgdGVzdG1vZGUgMAphdGgxMGtfcGNpIDAwMDE6MDE6
MDAuMDogZmlybXdhcmUgdmVyIDEwLjRiLWN0LTk5ODQtdEgtMDEzLWQ4MWY2MmQ5NyBhcGkgNSBm
ZWF0dXJlcyBtZnAscGVlci1mbG93LWN0cmwsdHhzdGF0dXMtbm9hY2ssd21pLTEwLngtQ1QscmF0
ZW1hc2stQ1QscmVnZHVtcC1DVCx0eHJhdGUtQ1QsZmx1c2gtYWxsLUNULHBpbmdwb25nLUNULGNo
LXJlZ3MtQ1Qsbm9wLUNULGh0dC1tZ3QtQ1Qsc2V0LXNwZWNpYWwtQ1Qsbm8tYm1pc3MtQ1QsdHgt
cmMtQ1QsY3VzdC1zdGF0cy1DVCx0eHJhdGUyLUNULGJlYWNvbi1jYi1DVCx3bWktYmxvY2stYWNr
LUNULHdtaS1iY24tcmMtQ1QgY3JjMzIgN2Q3YjQ1NGQKYXRoMTBrX3BjaSAwMDAxOjAxOjAwLjA6
IGJvYXJkX2ZpbGUgYXBpIDIgYm1pX2lkIDA6MiBjcmMzMiA4NTQ5ODczNAphdGgxMGtfcGNpIDAw
MDE6MDE6MDAuMDogdW5zdXBwb3J0ZWQgSFRDIHNlcnZpY2UgaWQ6IDE1MzYKYXRoMTBrX3BjaSAw
MDAxOjAxOjAwLjA6IDEwLjQgd21pIGluaXQ6IHZkZXZzOiAxNiAgcGVlcnM6IDQ4ICB0aWQ6IDk2
CmF0aDEwa19wY2kgMDAwMTowMTowMC4wOiBtc2R1LWRlc2M6IDI1MDAgIHNraWQ6IDMyCmF0aDEw
a19wY2kgMDAwMTowMTowMC4wOiB3bWkgcHJpbnQgJ1AgNDgvNDggViAxNiBLIDE0NCBQSCAxNzYg
VCAxODYgIG1zZHUtZGVzYzogMjUwMCAgc3ctY3J5cHQ6IDAgY3Qtc3RhOiAwJwphdGgxMGtfcGNp
IDAwMDE6MDE6MDAuMDogd21pIHByaW50ICdmcmVlOiAxMjg3MDQgaXJhbTogMTUyODggc3JhbTog
NDQyMTInCmF0aDEwa19wY2kgMDAwMTowMTowMC4wOiBodHQtdmVyIDIuMiB3bWktb3AgNiBodHQt
b3AgNCBjYWwgcHJlLWNhbC1maWxlIG1heC1zdGEgMzIgcmF3IDAgaHdjcnlwdG8gMQoKYXRoMTBr
X2FoYiBhMDAwMDAwLndpZmk6IHFjYTQwMTkgaHcxLjAgdGFyZ2V0IDB4MDEwMDAwMDAgY2hpcF9p
ZCAweDAwM2IwMGZmIHN1YiAwMDAwOjAwMDAKYXRoMTBrX2FoYiBhMDAwMDAwLndpZmk6IGtjb25m
aWcgZGVidWcgMCBkZWJ1Z2ZzIDEgdHJhY2luZyAwIGRmcyAxIHRlc3Rtb2RlIDAKYXRoMTBrX2Fo
YiBhMDAwMDAwLndpZmk6IGZpcm13YXJlIHZlciAxMC40Yi1jdC00MDE5LXRILTAxMy1kODFmNjJk
OTcgYXBpIDUgZmVhdHVyZXMgbWZwLHBlZXItZmxvdy1jdHJsLHR4c3RhdHVzLW5vYWNrLHdtaS0x
MC54LUNULHJhdGVtYXNrLUNULHJlZ2R1bXAtQ1QsdHhyYXRlLUNULGZsdXNoLWFsbC1DVCxwaW5n
cG9uZy1DVCxjaC1yZWdzLUNULG5vcC1DVCxodHQtbWd0LUNULHNldC1zcGVjaWFsLUNULG5vLWJt
aXNzLUNULHR4LXJjLUNULGN1c3Qtc3RhdHMtQ1QsdHhyYXRlMi1DVCxiZWFjb24tY2ItQ1Qsd21p
LWJsb2NrLWFjay1DVCx3bWktYmNuLXJjLUNUIGNyYzMyIGE5MjE3ODQzCmF0aDEwa19haGIgYTAw
MDAwMC53aWZpOiBib2FyZF9maWxlIGFwaSAyIGJtaV9pZCAwOjIwIGNyYzMyIGUyZGZhYTkxCmF0
aDEwa19haGIgYTAwMDAwMC53aWZpOiB1bnN1cHBvcnRlZCBIVEMgc2VydmljZSBpZDogMTUzNgph
dGgxMGtfYWhiIGEwMDAwMDAud2lmaTogMTAuNCB3bWkgaW5pdDogdmRldnM6IDE2ICBwZWVyczog
NDggIHRpZDogOTYKYXRoMTBrX2FoYiBhMDAwMDAwLndpZmk6IG1zZHUtZGVzYzogMjUwMCAgc2tp
ZDogMzIKYXRoMTBrX2FoYiBhMDAwMDAwLndpZmk6IHdtaSBwcmludCAnUCA0OC80OCBWIDE2IEsg
MTQ0IFBIIDE3NiBUIDE4NiAgbXNkdS1kZXNjOiAyNTAwICBzdy1jcnlwdDogMCBjdC1zdGE6IDAn
CmF0aDEwa19haGIgYTAwMDAwMC53aWZpOiB3bWkgcHJpbnQgJ2ZyZWU6IDg4ODAwIGlyYW06IDE0
Njk2IHNyYW06IDQ3NTQwJwphdGgxMGtfYWhiIGEwMDAwMDAud2lmaTogaHR0LXZlciAyLjIgd21p
LW9wIDYgaHR0LW9wIDQgY2FsIHByZS1jYWwtZmlsZSBtYXgtc3RhIDMyIHJhdyAwIGh3Y3J5cHRv
IDEKClJldmVydGluZyBqdXN0IHRoZXNlIHR3byBob3N0YXBkIHBhdGNoZXMsIGJ1dCBrZWVwaW5n
IHRoZSBtYWM4MDIxMSBidW1wLCAKdGhlIHdhcm5pbmdzIHZhbmlzaCBpbW1lZGlhdGVseS4KClJl
Z2FyZHMKCVN0ZWZhbiBMaXBwZXJzLUhvbGxtYW5uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
