Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94671F6B55
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 21:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:To:
	From:References:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SKiZhA/3kbvZ4z1s5Oh5BLeDuswFICBlLn559s4CBTY=; b=phD3YPK31IXjeL9Fdv3o1+wKx
	0X3fYfFYbK/Jkb6Rr0oVVxNlle5bvFglnWkuGqPKSwtqWl6eN5XXSFmduiJmTMwFYvpKUj9KqOdsy
	A1wP8aKu7qSeHK7Xlh/GBP6d3OAK95GD5KnvTium5lilzG0/2Jc6Ggxd+EkfrZ7P/Ydm/0x+5iOg1
	1M1Bn/ub/FzrVViJaec/IxC0cFZGt3Rt11KhEjuJSzWpYGZFR0XxTjY1HpSdM0Qz8LObfihufY1us
	4O1p+8mMbyoQ+Lyt3FSc91Rx84Ty7TjRndyk3jfKYU1308s2Mu41Z1o5eV2yhpOtneWvbobbFwrLX
	0JI2sLLYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTtsA-0003uB-KF; Sun, 10 Nov 2019 20:31:46 +0000
Received: from welho-filter4.welho.com ([83.102.41.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTts4-0003tr-83
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 20:31:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter4.welho.com (Postfix) with ESMTP id BD6F045B6B
 for <openwrt-devel@lists.openwrt.org>; Sun, 10 Nov 2019 22:31:34 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter4.welho.com [::ffff:83.102.41.26]) (amavisd-new,
 port 10024)
 with ESMTP id x5hvtPKYUnTK for <openwrt-devel@lists.openwrt.org>;
 Sun, 10 Nov 2019 22:31:34 +0200 (EET)
Received: from [192.168.1.180] (87-92-58-105.bb.dnainternet.fi [87.92.58.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 2941F3A0
 for <openwrt-devel@lists.openwrt.org>; Sun, 10 Nov 2019 22:31:32 +0200 (EET)
References: <47396c5b-44e8-1b72-0b03-5409c802c461@welho.com>
From: Hannu Nyman <hannu.nyman@iki.fi>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Forwarded-Message-Id: <47396c5b-44e8-1b72-0b03-5409c802c461@welho.com>
Message-ID: <1c00b911-818e-f9db-1e4d-c669feac73f2@iki.fi>
Date: Sun, 10 Nov 2019 22:31:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101
 Thunderbird/71.0
MIME-Version: 1.0
In-Reply-To: <47396c5b-44e8-1b72-0b03-5409c802c461@welho.com>
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_123140_615845_515663A3 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.26 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] sysupgrade --force broken in master?
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

SSBub3RpY2VkIHRoYXQgdGhlIHN5c3VwZ3JhZGUgc2NyaXB0IHNlZW1zIHRvIGZhaWwgdG8gZm9y
Y2UgYSBzeXN1cGdyYWRlLgoKVHJ5aW5nIHRvIHN5c3VwZ3JhZGUgV05EUjM3MDB2Mgpmcm9twqAg
YXI3MXh4wqAgcjExNDY0LWNhYmFhZjA2ZmUKdG/CoCBhdGg3OcKgIHIxMTQ2OS1kYjA5MzM1ODQ4
CgoKSSB0ZXN0ZWQgd2l0aCBjb25zb2xlIHN5c3VwZ3JhZGUsIGFuZCB0aGF0IGZhaWxlZCwgdG9v
LiBSb3V0ZXIgcmVib290cyB0aGUgCmN1cnJlbnQgZmlybXdhcmUgd2l0aG91dCBmbGFzaGluZy4g
VGhlIHNzaCBjb25zb2xlIG91dHB1dCBzaG93cyBob3cgdGhlIApyb3V0ZXIgc3RhcnRzIHRoZSBz
eXN1cGdyYWRlIGFuZCBub3RlcyAiLS1mb3JjZSIgYnV0IHRoZW4gbm8gYWN0dWFsIApzeXN1cGdy
YWRlIGhhcHBlbnMsIGluc3RlYWQgdGhlIHJvdXRlciByZWJvb3RzIGFuZCByZXR1cm5zIHRvIHRo
ZSBleGlzdGluZyAKZmlybXdhcmUuCgpJIGRvIG5vdCBjdXJyZW50IGhhdmUgc2VyaWFsIGNvbnNv
bGUgY29ubmVjdGVkLCBzbyB0aGlzIGRlYnVnZ2luZyBiZWxvdyBoYXMgCmJlZW4gZG9uZSBqdXN0
IHZpYSBTU0ggY29uc29sZQoKClNTSCBjb25zb2xlIG91dHB1dDoKCiDCoE9wZW5XcnQgU05BUFNI
T1QsIHIxMTQ2NC1jYWJhYWYwNmZlCiDCoC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCnJvb3RAcm91dGVyMjp+IyBzeXN1cGdyYWRlIC12IC1GIC90
bXAvV05EUjM3MDB2Mi1tYXN0ZXItcjExNDY5LWRiMDkzMzU4NDgtMjAxOTExCjEwLTIxMzQtc3Fm
cy1zeXN1cGdyYWRlLmJpbgpEZXZpY2Ugd25kcjM3MDAgbm90IHN1cHBvcnRlZCBieSB0aGlzIGlt
YWdlClN1cHBvcnRlZCBkZXZpY2VzOiBuZXRnZWFyLHduZHIzNzAwdjIgd25kcjM3MDB2MgpJbWFn
ZSBjaGVjayBmYWlsZWQgYnV0IC0tZm9yY2UgZ2l2ZW4gLSB3aWxsIHVwZGF0ZSBhbnl3YXkhClNh
dmluZyBjb25maWcgZmlsZXMuLi4KZXRjL2NvbGxlY3RkLmNvbmYKZXRjL2NvbmZpZy9hZGJsb2Nr
Ci4uLgpldGMvdWh0dHBkLmtleQpldGMvdWh0dHBkLmNydApDb21tZW5jaW5nIHVwZ3JhZGUuIENs
b3NpbmcgYWxsIHNoZWxsIHNlc3Npb25zLgouLi4KUkVCT09UIC8gcmVjb25uZWN0IHNzaCBjb25z
b2xlCi4uLgpCdXN5Qm94IHYxLjMxLjEgKCkgYnVpbHQtaW4gc2hlbGwgKGFzaCkKCiDCoCBfX19f
X19fwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfX19fX19fX8KgwqDC
oMKgwqDCoMKgIF9fCiDCoHzCoMKgwqDCoMKgwqAgfC4tLS0tLS4tLS0tLS4tLS0tLS58wqAgfMKg
IHzCoCB8Li0tLS0ufMKgIHxfCiDCoHzCoMKgIC3CoMKgIHx8wqAgX8KgIHzCoCAtX198wqDCoMKg
wqAgfHzCoCB8wqAgfMKgIHx8wqDCoCBffHzCoMKgIF98CiDCoHxfX19fX19ffHzCoMKgIF9ffF9f
X19ffF9ffF9ffHxfX19fX19fX3x8X198wqAgfF9fX198CiDCoMKgwqDCoMKgwqDCoMKgwqAgfF9f
fCBXIEkgUiBFIEwgRSBTIFPCoMKgIEYgUiBFIEUgRCBPIE0KIMKgLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIMKgT3BlbldydCBTTkFQU0hPVCwg
cjExNDY0LWNhYmFhZjA2ZmUKIMKgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQoKInVidXMgbW9uaXRvciIgZnJvbSBvdGhlciBTU0ggY29uc29sZToKCnJv
b3RAcm91dGVyMjp+IyB1YnVzIG1vbml0b3IKLT4gZWJhZTEzMDkgIzAwMDAwMDAzwqDCoMKgwqDC
oMKgwqDCoCBzdGF0dXM6IHsic3RhdHVzIjowfQotPiBhYWU1NzAxMCAjYWFlNTcwMTDCoMKgwqDC
oMKgwqDCoMKgwqAgaGVsbG86IHt9CjwtIGFhZTU3MDEwICMwMDAwMDAwMMKgwqDCoMKgwqDCoMKg
wqAgbG9va3VwOiB7Im9ianBhdGgiOiJzeXN0ZW0ifQotPiBhYWU1NzAxMCAjMDAwMDAwMDDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBkYXRhOiAKeyJvYmpwYXRoIjoic3lzdGVtIiwib2JqaWQiOjYyNjY2
MjY1MSwib2JqdHlwZSI6LTE3MjM4MzEzNCwic2lnbmF0dXJlIjp7ImJvYXJkIjp7fSwiaW5mbyI6
e30sInJlYm9vdCI6e30sIndhdGNoZG9nIjp7ImZyZXF1ZW5jeSI6NSwidGltZW91dCI6NSwibWFn
aWNjbG9zZSI6Nywic3RvcCI6N30sInNpZ25hbCI6eyJwaWQiOjUsInNpZ251bSI6NX0sInZhbGlk
YXRlX2Zpcm13YXJlX2ltYWdlIjp7InBhdGgiOjN9LCJzeXN1cGdyYWRlIjp7InBhdGgiOjMsImZv
cmNlIjo3LCJiYWNrdXAiOjMsInByZWZpeCI6MywiY29tbWFuZCI6Mywib3B0aW9ucyI6Mn19fQot
PiBhYWU1NzAxMCAjMDAwMDAwMDDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1czogeyJzdGF0dXMiOjB9
CjwtIGFhZTU3MDEwICMyNTVhMWNmYsKgwqDCoMKgwqDCoMKgwqAgaW52b2tlOiAKeyJvYmppZCI6
NjI2NjYyNjUxLCJtZXRob2QiOiJzeXN1cGdyYWRlIiwiZGF0YSI6eyJwcmVmaXgiOiIvdG1wL3Jv
b3QiLCJwYXRoIjoiL3RtcC9XTkRSMzcwMHYyLW1hc3Rlci1yMTE0NjktZGIwOTMzNTg0OC0yMDE5
MTExMC0yMTM0LXNxZnMtc3lzdXBncmFkZS5iaW4iLCJmb3JjZSI6dHJ1ZSwiYmFja3VwIjoiL3Rt
cC9zeXN1cGdyYWRlLnRneiIsImNvbW1hbmQiOiIvbGliL3VwZ3JhZGUvZG9fc3RhZ2UyIiwib3B0
aW9ucyI6eyJzYXZlX3BhcnRpdGlvbnMiOjF9fX0KLT4gNGFlZGUxOWMgI2FhZTU3MDEwwqDCoMKg
wqDCoMKgwqDCoCBpbnZva2U6IAp7Im9iamlkIjo2MjY2NjI2NTEsIm1ldGhvZCI6InN5c3VwZ3Jh
ZGUiLCJkYXRhIjp7InByZWZpeCI6Ii90bXAvcm9vdCIsInBhdGgiOiIvdG1wL1dORFIzNzAwdjIt
bWFzdGVyLXIxMTQ2OS1kYjA5MzM1ODQ4LTIwMTkxMTEwLTIxMzQtc3Fmcy1zeXN1cGdyYWRlLmJp
biIsImZvcmNlIjp0cnVlLCJiYWNrdXAiOiIvdG1wL3N5c3VwZ3JhZGUudGd6IiwiY29tbWFuZCI6
Ii9saWIvdXBncmFkZS9kb19zdGFnZTIiLCJvcHRpb25zIjp7InNhdmVfcGFydGl0aW9ucyI6MX19
LCJ1c2VyIjoicm9vdCIsImdyb3VwIjoicm9vdCJ9CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
