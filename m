Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805301B3301
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 01:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8WqLPA6zj5xTRolSRBebNy14SRoX0zcjJVsTlFMtRac=; b=LcVSff4qmRF3XPHUCl3lrvdOE3
	blKHWsVdIL6s+8xEheVNThCJIuiRgxt/S4Cp0k2OM2lHWr3SP+S1OXnmllnPdhKlfilXuWiInMqpH
	26gVAGnhX7WYyGZqnypmb9W2wrFc+E6Lb4Zd1neivgVHGAdWraQCJEwx9zPqzuyF4yc33aqLvKRVj
	4pmair2JKHFV9VWU8HupHPrleNNKvdIW7502oXcJrRl1gtxbmLvBGcm1RjwmMZg/SBv71yi895svr
	vrt+JirAvfuQwxyBn1SLWcPbbyCS70fK+o7ybmdSRW2oAaePLRCo9r95PS98GWZEjIz+0YAGbKpGg
	Eb0bfeBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR2Ca-0001HI-VJ; Tue, 21 Apr 2020 23:21:16 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR2CT-0001F6-TT
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 23:21:11 +0000
Received: by mail-ej1-x641.google.com with SMTP id gr25so361147ejb.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Apr 2020 16:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5k8AA6r7l18aLAwLbrUhEpwv3PKDqg4fZlkp85AS8Hc=;
 b=L7RYYnhP+5Yisr/FWkcbe31/iczsT9jjA08f4PLBp9wW+IobFXj7atmfuNXX/FiSWz
 /36dO7NeCdmJlHSB6thHR3rn21WmjeONYYsU4UsCAKZPABLzfq1LxI4TPFLqo+Wv246I
 uNRY5rJ0bIyhdvPNI5qY/gJmnj0q/Nhh5pwczoiZLMGNhMU70ROe8gMRXQlBDHkng5jQ
 +jsih/KmsNN7xxEZ51eM/oa17Xv/fT7TbluOshh34s5KiDsy57m3hS+r88+q5s7YwuRY
 YY4JZG/1Lc/i6PCC76V6AdNp4QHqALthdgHCqIELF09l3isMmwMiiCyBuDGdL6uAUHGr
 Gg7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=5k8AA6r7l18aLAwLbrUhEpwv3PKDqg4fZlkp85AS8Hc=;
 b=WzdCuFXlHpNv7J7njjc2VRrPS9U6gkcwnClE14kTdJsNMwYjYH5Xpr/dnGhkN/MCyW
 L52jitOI+hyns7OyxoT8nJV5gHa1IONSMGQcqRIWNVGUtyD9qgx0UDGy/ka5qMeVKe5W
 dlaoWJqCYU/Bvs+Tdm5Hif15MtFIEFh91sFL2ppV/XxK92dImpvZrKpsveVs0kW1HIqf
 Yqy2rbYpvUeeXOHmVvQ5MmH6h2trgKXLji5PELhbqOo54n7UnmqPtizrRc+gw7Wh3DYZ
 kEI9hN+ut1H6rRnACOXG/ynL4gQI2OF+JvIniF6z8XaIu3XNlC5IQxTglhHZNVwregob
 rh5w==
X-Gm-Message-State: AGi0PubqyaYuDwWYwEXX4LNsxLPVZEIWmVWuTp9NVA4pMQrVA8ItzqjX
 hYPTMywHpLRKh5svgRdVqRY5PMa2pcqPdz/C8XO4MTyb
X-Google-Smtp-Source: APiQypIj2xAfxRk+jNpsMpmtA/Y+onQbENw5W37RSnXeOblTSj2rSe0JjSrHDmy5ei6PVZ4R4a+cxPM11gN0qiz49po=
X-Received: by 2002:a17:906:2d4a:: with SMTP id
 e10mr14443917eji.222.1587511266254; 
 Tue, 21 Apr 2020 16:21:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200410223709.1974-1-dobrovolskiy.alexey@gmail.com>
In-Reply-To: <20200410223709.1974-1-dobrovolskiy.alexey@gmail.com>
From: Alexey Dobrovolskiy <dobrovolskiy.alexey@gmail.com>
Date: Wed, 22 Apr 2020 02:20:55 +0300
Message-ID: <CANCYDrwqC8aXJvOJu=oGzv-L3rgxW58-EG=ETyqWKc-O4EVsTQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_162109_977050_37EA92B9 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ramips: remove patches for USB-dwc2
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

SGksClVTQiBkb2VzIG5vdCB3b3JrIGluIG1hc3RlciBhdCAzNWYyMDhkYTNjIGJ1aWx0IHdpdGgg
dGVzdGluZyBrZXJuZWwKNS40IHdpdGggb3Igd2l0aG91dCAwMDMyLVVTQi1kd2MyLWFkZC1kZXZp
Y2VfcmVzZXQucGF0Y2guCihyYW1pcHMsIFp5WEVMIEtlZW5ldGljKQpJbiBib290IGxvZzoKWyAg
ICA2Ljg4ODI5M10gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciB1c2Jm
cwpbICAgIDYuODk5NjQxXSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVy
IGh1YgpbICAgIDYuOTEwNjMwXSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBkZXZpY2UgZHJpdmVy
IHVzYgpbICAgIDYuOTMwOTA0XSBlaGNpX2hjZDogVVNCIDIuMCAnRW5oYW5jZWQnIEhvc3QgQ29u
dHJvbGxlciAoRUhDSSkgRHJpdmVyClsgICAgNi45NTUwODZdIFNDU0kgc3Vic3lzdGVtIGluaXRp
YWxpemVkClsgICAgNi45NzAzOTRdIGVoY2ktZnNsOiBGcmVlc2NhbGUgRUhDSSBIb3N0IGNvbnRy
b2xsZXIgZHJpdmVyClsgICAgNi45ODUyMzVdIGVoY2ktcGxhdGZvcm06IEVIQ0kgZ2VuZXJpYyBw
bGF0Zm9ybSBkcml2ZXIKWyAgICA3LjAwNjY2Nl0gZHdjMiAxMDFjMDAwMC5vdGc6IENvbmZpZ3Vy
YXRpb24gbWlzbWF0Y2guIGRyX21vZGUgZm9yY2VkIHRvIGhvc3QKWyAgICA3LjAzMzE4OV0gZHdj
MiAxMDFjMDAwMC5vdGc6IGR3YzJfY29yZV9yZXNldDogSEFORyEgQUhCIElkbGUKdGltZW91dCBH
UlNUQ1RMIEdSU1RDVExfQUhCSURMRQpbICAgIDcuMDUwNjM3XSBkd2MyOiBwcm9iZSBvZiAxMDFj
MDAwMC5vdGcgZmFpbGVkIHdpdGggZXJyb3IgLTE2ClsgICAgNy4wNzQ2NjJdIHVzYmNvcmU6IHJl
Z2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgdXNiLXN0b3JhZ2UKCkZ1bGwgbG9nIGF0dGFj
aGVkIHRvIEZTIzI5NjQKCkJlc3QgcmVnYXJkcywKQWxleGV5CgrRgdCxLCAxMSDQsNC/0YAuIDIw
MjAg0LMuINCyIDAxOjM3LCBBbGV4ZXkgRG9icm92b2xza3kgPGRvYnJvdm9sc2tpeS5hbGV4ZXlA
Z21haWwuY29tPjoKPgo+IEluIEZTIzI3Mzggd2UgY2FuIHNlZSB0aGF0IHBhdGNoIGZpcnN0IGlu
dHJvZHVjZWQgaW4KPiBlOGViY2ZmICgicmFtaXBzOiBhZGQgYSBleHBsaWNpdCByZXNldCB0byBk
d2MyIikKPiBicmVha3MgVVNCIGZ1bmN0aW9uYWxpdHkgc2luY2UgMTguMDYuIFRodXMsIHRoaXMg
cGF0Y2ggc2hvdWxkIGJlIHJlbW92ZWQuCj4KPiBSZW1vdmVkOgo+IC0gMDAzMi1VU0ItZHdjMi1h
ZGQtZGV2aWNlX3Jlc2V0LnBhdGNoCj4KPiBGaXhlczogRlMjMjczOAo+IEZpeGVzOiBGUyMyOTY0
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgRG9icm92b2xza3kgPGRvYnJvdm9sc2tpeS5hbGV4
ZXlAZ21haWwuY29tPgo+IC0tLQo+Cj4gTm90ZXM6Cj4gICAgIEkgY2Fu4oCZdCBhc3Nlc3Mgd2hl
dGhlciB0aGUgcm9vdCBjYXVzZSBvZiB0aGUgZThlYmNmZiBwYXRjaCBoYXMgYmVlbiBmaXhlZAo+
ICAgICBpbiB1cHN0cmVhbSBvciB0aGUgcGF0Y2ggbmVlZHMgdG8gYmUgcmV3cml0dGVuLiBGcm9t
IHRoZSBkZXNjcmlwdGlvbgo+ICAgICBvZiB0aGUgYnVncywgaXQgaXMgb25seSBjbGVhciB0aGF0
IGluIHRoZSBsYXRlc3QgT3BlbldydCB2ZXJzaW9ucyB0aGlzCj4gICAgIHBhdGNoIGRvZXMgbm90
IHdvcmsgY29ycmVjdGx5Lgo+Cj4gICAgIEkgYnVpbHQgMTguMDYuMiBhbmQgbWFzdGVyIGF0IDkx
YzYxYWFlMjAwZWNmOThlMzMyNDgyZDM5NWJlZGE4MTlkNmE0ZmEKPiAgICAgZm9yIFp5WEVMIEtl
ZW5ldGljIHdpdGggMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jlc2V0LnBhdGNoIHJlbW92ZWQK
PiAgICAgYXMgZGVzY3JpYmVkIGluIEZTIzI3MzggYW5kIFVTQiB3b3JrcyB3aXRoIGEgVVNCIGZs
YXNoIGRyaXZlIChGUyMyOTY0KS4KPgo+ICAuLi4vMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jl
c2V0LnBhdGNoICAgICAgfCAyOSAtLS0tLS0tLS0tLS0tLS0tLS0tCj4gIC4uLi8wMDMyLVVTQi1k
d2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2ggICAgICB8IDI5IC0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCA1OCBkZWxldGlvbnMoLSkKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0
IHRhcmdldC9saW51eC9yYW1pcHMvcGF0Y2hlcy00LjE0LzAwMzItVVNCLWR3YzItYWRkLWRldmlj
ZV9yZXNldC5wYXRjaAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L3JhbWlwcy9w
YXRjaGVzLTUuNC8wMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKPgo+IGRpZmYg
LS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL3BhdGNoZXMtNC4xNC8wMDMyLVVTQi1kd2MyLWFk
ZC1kZXZpY2VfcmVzZXQucGF0Y2ggYi90YXJnZXQvbGludXgvcmFtaXBzL3BhdGNoZXMtNC4xNC8w
MDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKPiBkZWxldGVkIGZpbGUgbW9kZSAx
MDA2NDQKPiBpbmRleCBjMDRlMmRiNjYxLi4wMDAwMDAwMDAwCj4gLS0tIGEvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9wYXRjaGVzLTQuMTQvMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jlc2V0LnBhdGNo
Cj4gKysrIC9kZXYvbnVsbAo+IEBAIC0xLDI5ICswLDAgQEAKPiAtRnJvbSBhNzU4ZTA4NzBjNmQx
ZTRiMDI3MmY2ZTdmOWVmYTlmYWNlNTUzNGJiIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQo+IC1G
cm9tOiBKb2huIENyaXNwaW4gPGJsb2dpY0BvcGVud3J0Lm9yZz4KPiAtRGF0ZTogU3VuLCAyNyBK
dWwgMjAxNCAwOTo0OTowNyArMDEwMAo+IC1TdWJqZWN0OiBbUEFUQ0ggMzIvNTNdIFVTQjogZHdj
MjogYWRkIGRldmljZV9yZXNldCgpCj4gLQo+IC1TaWduZWQtb2ZmLWJ5OiBKb2huIENyaXNwaW4g
PGJsb2dpY0BvcGVud3J0Lm9yZz4KPiAtLS0tCj4gLSBkcml2ZXJzL3VzYi9kd2MyL2hjZC5jIHwg
ICAgMyArKysKPiAtIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAtCj4gLS0tLSBh
L2RyaXZlcnMvdXNiL2R3YzIvaGNkLmMKPiAtKysrIGIvZHJpdmVycy91c2IvZHdjMi9oY2QuYwo+
IC1AQCAtNDgsNiArNDgsNyBAQAo+IC0gI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gLSAjaW5jbHVk
ZSA8bGludXgvc2xhYi5oPgo+IC0gI2luY2x1ZGUgPGxpbnV4L3VzYi5oPgo+IC0rI2luY2x1ZGUg
PGxpbnV4L3Jlc2V0Lmg+Cj4gLQo+IC0gI2luY2x1ZGUgPGxpbnV4L3VzYi9oY2QuaD4KPiAtICNp
bmNsdWRlIDxsaW51eC91c2IvY2gxMS5oPgo+IC1AQCAtNTIxNSw2ICs1MjE2LDggQEAgaW50IGR3
YzJfaGNkX2luaXQoc3RydWN0IGR3YzJfaHNvdGcgKmhzbwo+IC0KPiAtICAgICAgIHJldHZhbCA9
IC1FTk9NRU07Cj4gLQo+IC0rICAgICAgZGV2aWNlX3Jlc2V0KGhzb3RnLT5kZXYpOwo+IC0rCj4g
LSAgICAgICBoY2ZnID0gZHdjMl9yZWFkbChoc290Zy0+cmVncyArIEhDRkcpOwo+IC0gICAgICAg
ZGV2X2RiZyhoc290Zy0+ZGV2LCAiaGNmZz0lMDh4XG4iLCBoY2ZnKTsKPiAtCj4gZGlmZiAtLWdp
dCBhL3RhcmdldC9saW51eC9yYW1pcHMvcGF0Y2hlcy01LjQvMDAzMi1VU0ItZHdjMi1hZGQtZGV2
aWNlX3Jlc2V0LnBhdGNoIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRjaGVzLTUuNC8wMDMyLVVT
Qi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKPiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCBlYzgzN2NkYTkzLi4wMDAwMDAwMDAwCj4gLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlw
cy9wYXRjaGVzLTUuNC8wMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKPiArKysg
L2Rldi9udWxsCj4gQEAgLTEsMjkgKzAsMCBAQAo+IC1Gcm9tIGE3NThlMDg3MGM2ZDFlNGIwMjcy
ZjZlN2Y5ZWZhOWZhY2U1NTM0YmIgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gLUZyb206IEpv
aG4gQ3Jpc3BpbiA8YmxvZ2ljQG9wZW53cnQub3JnPgo+IC1EYXRlOiBTdW4sIDI3IEp1bCAyMDE0
IDA5OjQ5OjA3ICswMTAwCj4gLVN1YmplY3Q6IFtQQVRDSCAzMi81M10gVVNCOiBkd2MyOiBhZGQg
ZGV2aWNlX3Jlc2V0KCkKPiAtCj4gLVNpZ25lZC1vZmYtYnk6IEpvaG4gQ3Jpc3BpbiA8YmxvZ2lj
QG9wZW53cnQub3JnPgo+IC0tLS0KPiAtIGRyaXZlcnMvdXNiL2R3YzIvaGNkLmMgfCAgICAzICsr
Kwo+IC0gMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IC0KPiAtLS0tIGEvZHJpdmVy
cy91c2IvZHdjMi9oY2QuYwo+IC0rKysgYi9kcml2ZXJzL3VzYi9kd2MyL2hjZC5jCj4gLUBAIC00
OSw2ICs0OSw3IEBACj4gLSAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiAtICNpbmNsdWRlIDxsaW51
eC9zbGFiLmg+Cj4gLSAjaW5jbHVkZSA8bGludXgvdXNiLmg+Cj4gLSsjaW5jbHVkZSA8bGludXgv
cmVzZXQuaD4KPiAtCj4gLSAjaW5jbHVkZSA8bGludXgvdXNiL2hjZC5oPgo+IC0gI2luY2x1ZGUg
PGxpbnV4L3VzYi9jaDExLmg+Cj4gLUBAIC01MDIzLDYgKzUwMjQsOCBAQCBpbnQgZHdjMl9oY2Rf
aW5pdChzdHJ1Y3QgZHdjMl9oc290ZyAqaHNvCj4gLQo+IC0gICAgICAgcmV0dmFsID0gLUVOT01F
TTsKPiAtCj4gLSsgICAgICBkZXZpY2VfcmVzZXQoaHNvdGctPmRldik7Cj4gLSsKPiAtICAgICAg
IGhjZmcgPSBkd2MyX3JlYWRsKGhzb3RnLCBIQ0ZHKTsKPiAtICAgICAgIGRldl9kYmcoaHNvdGct
PmRldiwgImhjZmc9JTA4eFxuIiwgaGNmZyk7Cj4gLQo+IC0tCj4gMi4xNy4xCj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
