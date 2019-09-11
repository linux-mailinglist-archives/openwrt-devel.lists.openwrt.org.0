Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93792B04E3
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 22:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mOdH6CnuegUNjoT57jdeRgJ/exz72Q0MJ72zNtre1CI=; b=BCN4sj4nRS0QMgNMI0YLrqDsk
	1D2/2sqlIuFH1Pc5W6DRxxK9d6VfuiU00mvI6rl4ErQRkpv7JtnGpvuN1DqQH09PKu8ZEywc6BnM3
	Z1Pz1CA018HUZ8bQiAT9MSD289pyru/FaiGGH6ygjxaXqrKpoELf1R4PNRJSjEsuvN4fQuSJxLRhA
	Em4+EndUokHHyLB8/2W9YKRjKTW9dLcF8v+lW6T8L8H+LyRmV68MSvTyPWzG8x7kfLT3VoYTm+35M
	vAqkr5KeI3bhzScHUrSjM7SWIBaeeWs00qM8+9qPdtzCQ6k8SpUPyITiZQaSJQxbntTTh+Q2Wje10
	vlbUPCs+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i89HR-00007E-BD; Wed, 11 Sep 2019 20:31:57 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i89HB-00006r-9L
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 20:31:42 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 4602CD949;
 Wed, 11 Sep 2019 13:31:40 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 4602CD949
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1568233900;
 bh=YBIyU2i5ygiNNWez+1brQ858aK8tjY1f/KGv14e6TNo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=SQiw3dmOhahJPeuOpjVo81ZiEN5fGI2sCzXaTUfc4QlasAYGNx0sBfT1Ioy5W0CuM
 nQ015Ru5KVl+pLiNNq/27p49zN8ULvW4HsnisxT9W4kymrePjHVy3vVZBFrhpQCPk6
 04rmLG+zcdetC7cdGY223FN9lsNt5N/n/I2TSef0=
To: Carlito Nueno <carlitonueno@gmail.com>
References: <f5bcb39a-bcc3-58c7-0b9a-622b0c386fff@candelatech.com>
 <CAEUausqebPVXzSgSBwgovzTBSWSO1dvF+G0LgqMOB8ry7hXGiA@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <329d1c22-ca3e-9675-6d4b-7ab8d1e38b79@candelatech.com>
Date: Wed, 11 Sep 2019 13:31:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAEUausqebPVXzSgSBwgovzTBSWSO1dvF+G0LgqMOB8ry7hXGiA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_133141_417958_A80137D1 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] New ath10k-ct firmware available.
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

WWVzLCBJIHRoaW5rIGl0IGlzIHByb2JhYmx5IGR5bmFtaWMgVkxBTnMuICBBbmQgaXQgc2hvdWxk
IHdvcmsgd2l0aCBhbnkgd2F2ZQoyIGF0aDEwayBjaGlwc2V0IGluY2x1ZGluZyA5OTg0LgoKSSdt
IGludGVyZXN0ZWQgdG8ga25vdyBpZiBpdCB3b3JrcyBvciBub3QuCgpUaGFua3MsCkJlbgoKT24g
OS8xMS8xOSAxOjMwIFBNLCBDYXJsaXRvIE51ZW5vIHdyb3RlOgo+IEhpIEJlbiwKPiAKPiBJIHdh
cyB3b25kZXJpbmcgaWYgQVAtVkxBTiBpcyBzYW1lIGFzIGR5bmFtaWMgVkxBTi4KPiBJZiBzbywg
d2lsbCB0aGlzIGZlYXR1cmUgd29yayB3aXRoIGFyNzF4eCBib2FyZCAtIFFDQTk5ODQKPiAKPiBJ
IGNhbiB0ZXN0IGl0IGFuZCBsZXQgeW91IGtub3cgaWYgSSBzZWUgYW55IGlzc3Vlcy4KPiAKPiBU
aGFuayB5b3UgbWFraW5nIGF0aDEwLWN0IQo+IAo+IAo+IE9uIE1vbiwgU2VwIDksIDIwMTkgYXQg
MTI6NTUgUE0gQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20gPG1haWx0bzpncmVl
YXJiQGNhbmRlbGF0ZWNoLmNvbT4+IHdyb3RlOgo+IAo+ICAgICBUaGlzIGVuYWJsZXMgYSBmZWF0
dXJlIGZsYWcgaW4gdGhlIHdhdmUtMiBmaXJtd2FyZSB3bWktc2VydmljZXMgaW5kaWNhdGluZyBp
dCBjYW4gc2VuZAo+ICAgICBzb2Z0d2FyZS1lbmNyeXB0ZWQgcmF3IGZyYW1lcy7CoCBUaGlzIHNo
b3VsZCBpbiB0dXJuIGFsbG93IHRoZSBBUC1WTEFOIGZlYXR1cmUgdG8gd29yay4KPiAKPiAgICAg
Rm9yIHRob3NlIHRoYXQga25vdyBob3cgdG8gdXNlIEFQLVZMQU5zLCBwbGVhc2UgdHJ5IHRoaXMg
d2F2ZS0yIEZXIGFuZCB0aGUgbGF0ZXN0IGF0aDEway1jdAo+ICAgICBkcml2ZXIoY29tbWl0OsKg
IDVlOGNkODZmOTBkYWM5NjZkMTJkZjZlY2U4NGFjNDE0NThkMGU5NWYpIGFuZCBsZXQgbWUga25v
dyBpZiBpdCB3b3JrcyBhcyBleHBlY3RlZAo+ICAgICBvciBub3QuCj4gCj4gICAgIDk4OHgKPiAg
ICAgNTg3MmZlMDQ2ZDkwZDg0NGE2ZDNlMjMyZTQ3YTY4NjViYWM1NTFkNzA0M2IyODc0MTQ3YzA3
N2UzNTZiMzVkOMKgIGZpcm13YXJlLTItY3QtZnVsbC1jb21tdW5pdHktMjIuYmluLmxlZGUuMDEx
Cj4gICAgIDQ1NjhjMzg5NWExMDFhZDI4MzYzNDkxZWE5MzVmNTZhNDhiZGRlYTRjMWJlMTg4OWE2
YmE4ZDE1MTkwMjA2MmHCoCBmaXJtd2FyZS0yLWN0LWZ1bGwtaHR0LW1ndC1jb21tdW5pdHktMjIu
YmluLmxlZGUuMDExCj4gICAgIC9ob21lL2dyZWVhcmIvY2FuZGVsYV9odG1sL2Rvd25sb2Fkcwo+
ICAgICA5ODg3Cj4gICAgIDJjNjRhYjIyMTU5ZDA0Y2QzNDViOGNhZmZkZDc2YWM5NWMwNDA5NzI5
MTIxYTdhNDA5NWM1MTkyZjQ2MDEzYjLCoCBmaXJtd2FyZS0yLWN0LWZ1bGwtY29tbXVuaXR5LTIy
LmJpbi5sZWRlLjAxMQo+ICAgICBjODA2Yjg4OTRmYWYzYmJiMTEwMDRmNzcxOTZjNmQ3MTFiOWE2
YzE4N2IxNTEyZDg0ZTA1ZmE5OGE1YWJhMmFiwqAgZmlybXdhcmUtMi1jdC1mdWxsLWh0dC1tZ3Qt
Y29tbXVuaXR5LTIyLmJpbi5sZWRlLjAxMQo+ICAgICAvaG9tZS9ncmVlYXJiL2NhbmRlbGFfaHRt
bC9kb3dubG9hZHMKPiAgICAgOTk4MAo+ICAgICA0ZWQxMDZkYmU4NDMxOTQ1YWZjNmE5OTU3NjVm
MjQ1ZjU3NDcxMzA5NWI1NjdkZjM1ZjEzOTdiYmE1ZjZmYTJlwqAgZmlybXdhcmUtNS1jdC1mdWxs
LWNvbW11bml0eS0xMi5iaW4tbGVkZS4wMTEKPiAgICAgNzQzNGM4NGM1MDFlMDBhMjRjYmNhMzM4
NTY5YmExNTBhOWVjMTM3ZWUyYjlmYTUyZDEzNDg0Nzk0MzAwOTI0Y8KgIGZpcm13YXJlLTUtY3Qt
ZnVsbC1odHQtbWd0LWNvbW11bml0eS0xMi5iaW4tbGVkZS4wMTEKPiAgICAgL2hvbWUvZ3JlZWFy
Yi9jYW5kZWxhX2h0bWwvZG93bmxvYWRzCj4gICAgIDk5ODQKPiAgICAgOWFmODE3ZTY1ZGM5ZjE5
NTUxN2YwNWFkMjVmMGVjYTY5MzYzMmVhMDNiNTU3MzlhMmUwZjBmYzgyZTgxMDQwNcKgIGZpcm13
YXJlLTUtY3QtZnVsbC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDExCj4gICAgIDExZTExNjYzMTU1
NTU1MDE4NWU3MTJmNzBiZDI5YWM0MWI0OTViZjBlY2JmYzMzMzRjYWRhOGE4YzEwYTQyZjDCoCBm
aXJtd2FyZS01LWN0LWZ1bGwtaHR0LW1ndC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDExCj4gICAg
IC9ob21lL2dyZWVhcmIvY2FuZGVsYV9odG1sL2Rvd25sb2Fkcwo+ICAgICA0MDE5Cj4gICAgIDIx
YTZiNWI2OWUzYzE1OTFjYjlmZTYwNzc5NzFkZGFkYjAwM2NhYzY5OGYyOTYyZDRkOGQ3M2JjMDQw
MzhiYmbCoCBmaXJtd2FyZS01LWN0LWZ1bGwtY29tbXVuaXR5LTEyLmJpbi1sZWRlLjAxMQo+ICAg
ICA4NzExMTcxN2VjNTI3OTEyNWQzOTdiZWE0NTM4NjcwNzY4NGVlNzA3YTkxZjZjNTgyOTg4MThm
ZDAyYmY1NjdmwqAgZmlybXdhcmUtNS1jdC1mdWxsLWh0dC1tZ3QtY29tbXVuaXR5LTEyLmJpbi1s
ZWRlLjAxMQo+ICAgICAvaG9tZS9ncmVlYXJiL2NhbmRlbGFfaHRtbC9kb3dubG9hZHMKPiAgICAg
OTg4OAo+ICAgICAzYzlmMmU5MTRkMmE1ZWIzYTQxMzg3MjIzOTA0NWRmY2NhMTA1NDgzYmE4M2Rk
OWIyOTNlNmI4ODU1ZmRhODgzwqAgZmlybXdhcmUtNS1jdC1mdWxsLWNvbW11bml0eS0xMi5iaW4t
bGVkZS4wMTEKPiAgICAgZGNiMWJkODI2ZTVlMWVmMjY2ZmQ3ZWUwNDQxMGI0NGQ0NDc0ZDU5ZjZl
Y2EwY2M2MzRlNjQzMmFhZjMyNjQyNsKgIGZpcm13YXJlLTUtY3QtZnVsbC1odHQtbWd0LWNvbW11
bml0eS0xMi5iaW4tbGVkZS4wMTEKPiAgICAgL2hvbWUvZ3JlZWFyYi9jYW5kZWxhX2h0bWwvZG93
bmxvYWRzCj4gCj4gCj4gICAgIFRoYW5rcywKPiAgICAgQmVuCj4gCj4gICAgIC0tIAo+ICAgICBC
ZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbSA8bWFpbHRvOmdyZWVhcmJAY2FuZGVs
YXRlY2guY29tPj4KPiAgICAgQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jIGh0dHA6Ly93d3cuY2Fu
ZGVsYXRlY2guY29tCj4gCj4gCj4gICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gICAgIG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gICAgIG9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcgPG1haWx0bzpvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnPgo+ICAgICBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo+IAoKCi0tIApCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0
ZWNoLmNvbT4KQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0ZWNo
LmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
