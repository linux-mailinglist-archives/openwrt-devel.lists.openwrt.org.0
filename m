Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41464CECFF
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 21:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t9qenzxUvMSR6a1emNZhzY4OMQzQKoVPIBoARMXG8rM=; b=ht1XiheoaxuCWJC8Y5N350KBK
	TFkz9ttMm8tZtyqYicqXey8L8mYjY2hmx+xasPDKcFuoETAGmjMeYA5IV01mXgLnL8JupxvCsgxkJ
	FeW+frfLkVCiXxL8nOgzjCmbnYYV9lwNIW7zJy875rbU5Zt7UFF8o5Rl9ZtvXeFm8Inv1juS3/kz2
	D28P4pxwcBtyXiYDRSjzPaBbNv9Az0/vEIAuvtDECMl42kkRz1sZ6b0R/wNgtXLQTbSJRq/NmXG1n
	nps/F9OC0ejg820uLB9hk8bOkRp8Ng+8/Slenk5DIPNYfP7vsiaFnvS/oj31bIU0o/iFcQKSwVB+Z
	KkCROvYTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZ3j-00088g-KO; Mon, 07 Oct 2019 19:52:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZ3Y-00088A-Vd
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 19:52:34 +0000
Received: from [128.171.10.79] (dhcp-grp2-01.ics.hawaii.edu [128.171.10.79])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 438C7240004;
 Mon,  7 Oct 2019 19:52:25 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20191007082204.30380-1-ynezz@true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <8b3eaf1e-cad3-743f-4b7d-0bb503e9e981@aparcar.org>
Date: Mon, 7 Oct 2019 09:52:23 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191007082204.30380-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_125233_154137_D09122E6 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: make UBNT Nano/Loco AC factory
 images reproducible
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

VGhlIGlzc3VlIGFwcGVhciBmb3IgYW1pcHMtbXQ3NjIwLXp5eGVsX2tlZW5ldGljLW9tbmktaWlb
MF0gYXMgd2VsbC4KClswXTogCmh0dHBzOi8vcmVidWlsZC5hcGFyY2FyLm9yZy9TTkFQU0hPVC9y
YW1pcHMvbXQ3NjIwL29wZW53cnQtcmFtaXBzLW10NzYyMC16eXhlbF9rZWVuZXRpYy1vbW5pLWlp
LXNxdWFzaGZzLWZhY3RvcnkuYmluLmh0bWwKCk9uIDEwLzYvMTkgMTA6MjIgUE0sIFBldHIgxaB0
ZXRpYXIgd3JvdGU6Cj4gQ3VycmVudCBmYWN0b3J5IGltYWdlcyBhcmUgYnVpbHQgb24gdG9wIG9m
IHN5c3VwZ3JhZGUgaW1hZ2VzIHdoaWNoCj4gY29udGFpbnMgbWV0YWRhdGEgd2hpY2ggYXJlIGNh
dXNpbmcgaW1hZ2UgcmVwcm9kdWNpYmlsaXR5IGlzc3Vlcywgc28KPiBsZXQncyBidWlsZCBmYWN0
b3J5IGltYWdlcyBmcm9tIHRoZSBzY3JhdGNoLiBXaGlsZSBhdCBpdCwgcmVmYWN0b3IgdGhlCj4g
c2hhcmVkIHZhcnMgaW50byBjb21tb24gYmFzZSBhcyB3ZWxsLgo+Cj4gUmVmOiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvb3BlbndydC1kZXZlbC8yMDE5LU9jdG9iZXIvMDE5
MjA1Lmh0bWwKPiBSZXBvcnRlZC1ieTogUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPgo+
IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gLS0tCj4gICB0
YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvZ2VuZXJpYy11Ym50Lm1rIHwgMjQgKysrKysrKysrKysr
LS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVy
aWMtdWJudC5tayBiL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9nZW5lcmljLXVibnQubWsKPiBp
bmRleCA2YWU3NjZlMjkzMzEuLjlhYjExMzI0YjQxMSAxMDA2NDQKPiAtLS0gYS90YXJnZXQvbGlu
dXgvYXRoNzkvaW1hZ2UvZ2VuZXJpYy11Ym50Lm1rCj4gKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5
L2ltYWdlL2dlbmVyaWMtdWJudC5tawo+IEBAIC0xMTQsNDAgKzExNCw0MCBAQCBkZWZpbmUgRGV2
aWNlL3VibnRfYnVsbGV0LW0teHcKPiAgIGVuZGVmCj4gICBUQVJHRVRfREVWSUNFUyArPSB1Ym50
X2J1bGxldC1tLXh3Cj4gICAKPiArZGVmaW5lIERldmljZS91Ym50LW5hbm8tYWMKPiArICBERVZJ
Q0VfUEFDS0FHRVMgKz0ga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFjYTk4OHgtY3QK
PiArICBJTUFHRV9TSVpFIDo9IDE1NzQ0awo+ICsgIElNQUdFL2ZhY3RvcnkuYmluIDo9IGFwcGVu
ZC1rZXJuZWwgfCBwYWQtdG8gJCQkJChCTE9DS1NJWkUpIHwgXAo+ICsJYXBwZW5kLXJvb3RmcyB8
IHBhZC1yb290ZnMgfCBta3VibnRpbWFnZS1zcGxpdCB8IFwKPiArCWNoZWNrLXNpemUgJCQkJChJ
TUFHRV9TSVpFKQo+ICtlbmRlZgo+ICsKPiAgIGRlZmluZSBEZXZpY2UvdWJudF9sYXAtMTIwCj4g
ICAgICQoRGV2aWNlL3VibnQtd2EpCj4gICAgIERFVklDRV9NT0RFTCA6PSBMaXRlQVAgYWMKPiAg
ICAgREVWSUNFX1ZBUklBTlQgOj0gTEFQLTEyMAo+IC0gIERFVklDRV9QQUNLQUdFUyArPSBrbW9k
LWF0aDEway1jdCBhdGgxMGstZmlybXdhcmUtcWNhOTg4eC1jdAo+IC0gIElNQUdFX1NJWkUgOj0g
MTU3NDRrCj4gLSAgSU1BR0UvZmFjdG9yeS5iaW4gOj0gJCQoSU1BR0Uvc3lzdXBncmFkZS5iaW4p
IHwgbWt1Ym50aW1hZ2Utc3BsaXQKPiArICAkKERldmljZS91Ym50LW5hbm8tYWMpCj4gICBlbmRl
Zgo+ICAgVEFSR0VUX0RFVklDRVMgKz0gdWJudF9sYXAtMTIwCj4gICAKPiAgIGRlZmluZSBEZXZp
Y2UvdWJudF9uYW5vYmVhbS1hYwo+ICAgICAkKERldmljZS91Ym50LXdhKQo+ICAgICBERVZJQ0Vf
TU9ERUwgOj0gTmFub0JlYW0gQUMKPiAtICBERVZJQ0VfUEFDS0FHRVMgKz0ga21vZC1hdGgxMGst
Y3QgYXRoMTBrLWZpcm13YXJlLXFjYTk4OHgtY3QKPiAtICBJTUFHRV9TSVpFIDo9IDE1NzQ0awo+
IC0gIElNQUdFL2ZhY3RvcnkuYmluIDo9ICQkKElNQUdFL3N5c3VwZ3JhZGUuYmluKSB8IG1rdWJu
dGltYWdlLXNwbGl0Cj4gKyAgJChEZXZpY2UvdWJudC1uYW5vLWFjKQo+ICAgZW5kZWYKPiAgIFRB
UkdFVF9ERVZJQ0VTICs9IHVibnRfbmFub2JlYW0tYWMKPiAgIAo+ICAgZGVmaW5lIERldmljZS91
Ym50X25hbm9zdGF0aW9uLWFjCj4gICAgICQoRGV2aWNlL3VibnQtd2EpCj4gICAgIERFVklDRV9N
T0RFTCA6PSBOYW5vc3RhdGlvbiBBQwo+IC0gIERFVklDRV9QQUNLQUdFUyArPSBrbW9kLWF0aDEw
ay1jdCBhdGgxMGstZmlybXdhcmUtcWNhOTg4eC1jdAo+IC0gIElNQUdFX1NJWkUgOj0gMTU3NDRr
Cj4gLSAgSU1BR0UvZmFjdG9yeS5iaW4gOj0gJCQoSU1BR0Uvc3lzdXBncmFkZS5iaW4pIHwgbWt1
Ym50aW1hZ2Utc3BsaXQKPiArICAkKERldmljZS91Ym50LW5hbm8tYWMpCj4gICBlbmRlZgo+ICAg
VEFSR0VUX0RFVklDRVMgKz0gdWJudF9uYW5vc3RhdGlvbi1hYwo+ICAgCj4gICBkZWZpbmUgRGV2
aWNlL3VibnRfbmFub3N0YXRpb24tYWMtbG9jbwo+ICAgICAkKERldmljZS91Ym50LXdhKQo+ICAg
ICBERVZJQ0VfTU9ERUwgOj0gTmFub3N0YXRpb24gQUMgbG9jbwo+IC0gIERFVklDRV9QQUNLQUdF
UyArPSBrbW9kLWF0aDEway1jdCBhdGgxMGstZmlybXdhcmUtcWNhOTg4eC1jdAo+IC0gIElNQUdF
X1NJWkUgOj0gMTU3NDRrCj4gLSAgSU1BR0UvZmFjdG9yeS5iaW4gOj0gJCQoSU1BR0Uvc3lzdXBn
cmFkZS5iaW4pIHwgbWt1Ym50aW1hZ2Utc3BsaXQKPiArICAkKERldmljZS91Ym50LW5hbm8tYWMp
Cj4gICBlbmRlZgo+ICAgVEFSR0VUX0RFVklDRVMgKz0gdWJudF9uYW5vc3RhdGlvbi1hYy1sb2Nv
Cj4gICAKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
