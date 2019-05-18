Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BC622385
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 May 2019 14:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDH0bs1WNEaRudvN/WS6uFHS0tLAaCEIoRD+X/Y3/8Q=; b=pmNZ3f5gGRHVcv
	uevdVCWWbyleKvzuGkqiPzZjnYOf19PRAXyBiBEXNS05ZQOdzp5FYBLEL6a7xKNP+py883JP69Adw
	DIMHmBYE3uLJ0oY8v1ZdQ/BbB6/Q3+yq4WfMQ0sE/W5onwC3kpqusQundw71tQiQbzSYzLVX3oJcZ
	vL4ax26MwytBhrNKaCGvSc5iIVBD7JQ8LLfaEoobu9SLJDFg36KKF/8BEC8YA6Yk+IuzfcN+hW1iD
	3OtH8IpaIm5WT7PxrsrzMg8oWEC3EQ3IFgu/6UPF5gUefL8rEIFTvDtyMJNnTJx/cNpRNLeQ2WfJ4
	kKYXb/jgTPBUXr6T8Liw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRymu-0000YO-P5; Sat, 18 May 2019 12:50:08 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRymk-0008M9-J8
 for openwrt-devel@lists.openwrt.org; Sat, 18 May 2019 12:50:00 +0000
Received: by mail-wr1-x42b.google.com with SMTP id e15so9783347wrs.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 May 2019 05:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sLjSTSn9x8xAt6Ln70ZluZrIP8uFjDS1JV3QJGfmyaA=;
 b=c0CHYi8LSQcWbucX0GiPCTGt1C3/SsPv/X6J4DKvuV+JiqiaV+NrNdVv1bRQl2rVwS
 4S4GLrMEz9gS1XOkOQMf2G+stn3jzciT6qcp+AKj3cQsONURIU6G7S+9HV1p/9jXg9OV
 o0lunDI5ZUVERSPwGdHrfnJQZYSGsfu3FCOeE8UHlKJLYXrrlrF3DuVrcrbPd//wGhoF
 dhOfwPC9ICMVtVYxjOUpHIQYlHjRZ/3CqlE0dxsGLOl157yORbQJlAPr39LpuXCE5a9z
 xN219C3O7LM6VFI9MO6ge88htnqUQYyJGRwJhvQf9u1go7EhjtBSdlpWmsDiXWpq2cmy
 OaDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sLjSTSn9x8xAt6Ln70ZluZrIP8uFjDS1JV3QJGfmyaA=;
 b=jIVbt/oFZ2r1dbDDzW3JGSfmiCb35jES4Az9m71Thw7Uxz28en2FbEqqzVKaMQNVF3
 G/VN4DfKau7AnwokHkTeZG6o/X2IicaRCXgPDBOhMheZgC9G1xeIbLh/Jc+EN6xSuH28
 4Q/9HVqz8TwbCx2ZoaxNRWUSKHTLe4pM1HjGyYCJvhZmcOh6/cixXko94NWOwohaWG4O
 1nbtzFh2kftUrKLHnUHdvf8Mmz5r82N6M8O/nVEpcyssN3t8kMjz9FphP+Jhx+hzjIU5
 Lv01VSIvNzKgsBEZ+L56bIUxDWf3NOuNALzYPpqayLqq6O12TnK4jc7W22YtTxVIyQYJ
 pDyA==
X-Gm-Message-State: APjAAAXAuLecPkPnSYgwX/w/hduehP9byMy8cNs+X+Oasa7Yw6rNOnh5
 qEHE4QEEWl7Ird8XR4jyUhEftAyBlhs=
X-Google-Smtp-Source: APXvYqzIYZzqQRGl+kotjpvAKnK+VRVhIxiXPZTpH/x1InkeDgIDcSDt0z1x9q5O7MpX7gwx2OEcHg==
X-Received: by 2002:a5d:6710:: with SMTP id o16mr9694527wru.173.1558183796545; 
 Sat, 18 May 2019 05:49:56 -0700 (PDT)
Received: from debian64.daheim (p4FD0962E.dip0.t-ipconnect.de. [79.208.150.46])
 by smtp.gmail.com with ESMTPSA id 88sm25822794wrc.33.2019.05.18.05.49.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 May 2019 05:49:55 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hRymg-0004XY-Nl; Sat, 18 May 2019 14:49:54 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 May 2019 14:49:54 +0200
Message-ID: <2817149.lzcexVK4Fd@debian64>
In-Reply-To: <1a79953f-d36d-9bc4-fae0-fafa4f5bae4d@gmail.com>
References: <6358e0b2-f60f-a820-68e4-21513abeefa5@aparcar.org>
 <20190514144959.GC93050@meh.true.cz>
 <1a79953f-d36d-9bc4-fae0-fafa4f5bae4d@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_054958_707999_DA5DE0DA 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] RFC: add metadata to buildroot
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
Cc: Alberto Bursi <bobafetthotmail@gmail.com>, Paul Spooren <mail@aparcar.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkbmVzZGF5LCBNYXkgMTUsIDIwMTkgNToxODowNSBQTSBDRVNUIEFsYmVydG8gQnVyc2kg
d3JvdGU6Cj4gCj4gT24gMTQvMDUvMTkgMTY6NDksIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gPiBb
YWRkaW5nIFRob21hcyBhbmQgQWxiZXJ0byB0byB0aGUgQ2MgbG9vcF0KPiA+Cj4gPiBQYXVsIFNw
b29yZW4gPG1haWxAYXBhcmNhci5vcmc+IFsyMDE5LTA1LTA0IDE3OjQ4OjAzXToKPiA+Cj4gPiBI
aSwKPiA+Cj4gPj4gZnJvbSBteSBwb2ludCBvZiB2aWV3IHRoZSBjdXJyZW50IE9wZW5XcnQgZGV2
aWNlIGRvY3VtZW50YXRpb24gbGFja3MKPiA+PiBzb21lIHVuaXR5LCBtZWFuaW5nIHRoZSB0YWJs
ZSBvZiBoYXJkd2FyZSBpcyBwYXJ0bHkgaW5jb21wbGV0ZSBvcgo+ID4+IGluY29uc2lzdGVudC4g
QWxzbyBkb2N1bWVudGF0aW9ucyBhcmUgb2Z0ZW4gcmV3cml0dGVuIHdpdGggZGlmZmVyZW50Cj4g
Pj4gcHJlY2lzaW9uIGFuZCAidG9uZ3VlIi4KPiA+Pgo+ID4+IFRvIHVuaWZ5IHRoaW5ncyBJIGNy
ZWF0ZWQgYSAqUG9DKlswXSwgbW9zdGx5IGJhc2VkIG9uIHRoZSBvZmZpY2lhbAo+ID4+IExpbmVh
Z2VPUyBXaWtpWzFdLCBhcyB0aGV5IGhhdmUgYSBzaW1pbGFyIHNpdHVhdGlvbiByZWdhcmRpbmcg
ZGV2aWNlcy4KPiA+Pgo+ID4+IFRoZSBpZGVhIGlzIHRvIGRlZmluZSB0ZW1wbGF0ZXMgZGVzY3Jp
YmluZyBjb21tb24gaW5mb3JtYXRpb24gYW5kIGZpbGwKPiA+PiB0aGVtIHdpdGggZGV2aWNlIG1l
dGFkYXRhLgo+ID4+Cj4gPj4gVGhlICpQb0MqIGFib3ZlIGlzIGJhc2VkIG9uIHRoZSBmb2xsb3dp
bmcgbWV0YWRhdGEgaGVyZVsyXS4gTW9zdCBwYXJ0cwo+ID4+IG9mIHRoZSBtZXRhZGF0YSBhcmUg
c2NyYXBlZCBmcm9tIHRoZSBjdXJyZW50IFRvSFszXSwgaG93ZXZlciBzb21lIHNtYWxsCj4gPj4g
cGllY2VzIGFyZSBhZGRlZCBhbmQgbGF0ZXIgcmVuZGVyZWQgaW4gc29tZXRoaW5nIHVzZWZ1bDoK
PiA+Pgo+ID4+ICAgICAgdGZ0cF9pbWFnZTogQXJjaGVyQzV2MV90cF9yZWNvdmVyeS5iaW4KPiA+
PiAgICAgIHRmdHBfaXA6IDE5Mi4xNjguMC42Ngo+ID4+Cj4gPj4gUmVzdWx0IGluIGEgc21hbGwg
dGV4dCB0byBleHBsYWluIGhvdyB0byB1c2UgdGhlIFRGVFAgcmVjb3ZlcnkuCj4gPj4KPiA+PiAg
ICAgIHN3aXRjaF9wb3J0czoKPiA+PiAgICAgICAgMDogRVRIMQo+ID4+ICAgICAgICAxOiBXQU4K
PiA+PiAgICAgICAgMjogTEFOMQo+ID4+ICAgICAgICAzOiBMQU4yCj4gPj4gICAgICAgIDQ6IExB
TjMKPiA+PiAgICAgICAgNTogTEFONAo+ID4+ICAgICAgICA2OiBFVEgwCj4gPj4KPiA+PiBDcmVh
dGVzIGEgdGFibGUgd2l0aCB0aGUgc3dpdGNoIHBvcnQgbWVzc2luZy4KPiA+Pgo+ID4+IFNhbWUg
Y291bGQgYmUgZG9uZSB3aXRoIHRoZSBmbGFzaCBsYXlvdXQsIExFRHMsIGV0Yy4KPiA+Pgo+ID4+
IEFsbCB0aGVzZSBpbmZvcm1hdGlvbiBhcmUgKGhvcGVmdWxseSkgYXZhaWxhYmxlIHRvIHRoZSBk
ZXZlbG9wZXIgYWRkaW5nCj4gPj4gYSBuZXcgZGV2aWNlLCB0aGVyZWZvcmUgZWFzeSB0byBzdXBw
bHkgc3VjaCBhIGB5YW1sYCBtZXRhZGF0YSBmaWxlIGFzCj4gPj4gd2VsbC4gT2Z0ZW4gdGhlc2Ug
aW5mb3JtYXRpb24gYXJlIChyZS1mb3JtdWxhdGVkKSBpbiBjb21taXQgbWVzc2FnZXMKPiA+PiBh
bnl3YXlbNF0uIE1lYW5pbmcsIHNvbWV3aGVyZSBpbiB0aGUgYnVpbGRyb290IGNvdWxkIGJlIGEg
c3RvcmUgb2YKPiA+PiBgeWFtbGAgZmlsZXMsIHdoaWNoIGNvdWxkIGV2ZW4gYmUgcmV1c2VkIGZv
ciBidWlsZGluZyBpdHNlbGYuCj4gPj4KPiA+PiBBIHNlY29uZCByZXBvc2l0b3J5IGxpa2Ugb3Bl
bndydC1kZXZpY2UuZ2l0WzVdIGNvdWxkIGJlIGFkZGVkIHRvIHJlbmRlcgo+ID4+IHRoZSB3aWtp
IHBhZ2VzIGFuZCBvcmdhbml6ZSB0aGUgdGVtcGxhdGVzLgo+ID4+Cj4gPj4gSSdkIGJlIGhhcHB5
IHRvIGhlYXIgeW91ciBvcGluaW9ucy4KPiA+IEkgcmVhbGx5IGxpa2UsIGl0J3MgbmljZSBhbmQg
SSBhcHBsYXVkIHlvdXIgZWZmb3J0LiBUaGFua3MhCj4gPgo+ID4+IEJlc3QsCj4gPj4gUGF1bAo+
ID4+Cj4gPj4gUFM6IEknbSBhZnJhaWQgSSBkb24ndCBrbm93IHRoZSBtYWlsIGFkZHJlc3Mgb2Yg
dG1vbWFzLi4uCj4gPj4KPiA+PiBbMF06IGh0dHBzOi8vYXBhcmNhci5naXRodWIuaW8vb3Blbndy
dC1kZXZpY2VzL2RldmljZXMvdHAtbGlua19hcmNoZXJfYzVfYWMxMjAwX3YxLwo+ID4+IFsxXTog
aHR0cDovL3dpa2kubGluZWFnZW9zLm9yZy9kZXZpY2VzLwo+ID4+IFsyXTogaHR0cHM6Ly9naXRo
dWIuY29tL2FwYXJjYXIvb3BlbndydC1kZXZpY2VzL2Jsb2IvbWFzdGVyL19kYXRhL2RldmljZXMv
dHAtbGlua19hcmNoZXJfYzVfYWMxMjAwX3YxLnltbAo+ID4+IFszXTogaHR0cHM6Ly9vcGVud3J0
Lm9yZy90b2gvaHdkYXRhL3RwLWxpbmsvdHAtbGlua19hcmNoZXJfYzVfYWMxMjAwX3YxCj4gPj4g
WzRdOiBodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0L29wZW53cnQuZ2l0O2E9Y29t
bWl0O2g9NDNlOGMzN2NiNGRhNjRhMTJhM2NiODhhODRiMTlkYjdmMmZjNjQwYwo+ID4+IFs1XTog
aHR0cHM6Ly9naXRodWIuY29tL2FwYXJjYXIvb3BlbndydC1kZXZpY2VzCj4gPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKPiA+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiA+IGh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4gCj4g
Cj4gSSdtIGFsd2F5cyBpbiBmYXZvciBvZiBtb3JlIGF1dG9tYXRpb24sIGFsdGhvdWdoIHRoZSBU
T0ggaXMgbW9zdGx5IAo+IHRtb21hcydzIHRoaW5nLgo+IAo+IFRoZSBwb2ludCBoZXJlIGlzIHRo
YXQgYmVmb3JlIHdlIGNhbiBlbmZvcmNlIHRoaXMgb24gY29tbWl0cyB0aGVyZSBuZWVkcyAKPiB0
byBiZToKPiAKPiAtYSBjb25zZW5zdXMgYmV0d2VlbiBjb3JlIGRldnMKCk5haCwgSWYgdGhlcmUn
cyBhIHNjcmlwdCBpbiBhIChkZXZlbCkgcGFja2FnZSB0aGF0IGNvdWxkIGV4dHJhY3QKc29tZSBv
ZiB0aGUgaW5mb3JtYXRpb24gYnkgcnVubmluZyBpdCBvbiB0aGUgZGV2aWNlIGFuZCBsZWF2ZSBi
bGFua3MKZm9yIHN0dWZmIHRoYXQgaXQgY2FuJ3QgZGV0ZWN0IHRoYXQgd291bGQgYmUgZ3JlYXQu
IAoKRnJvbSB3aGF0IEkgY2FuIHRlbGwsIHN1Y2ggYSBzY3JpcHQgc2hvdWxkIGJlIGFibGUgdG8g
Z3JhYiB0aGUKb3BlbndydCB0YXJnZXQgYW5kIGFyY2ggdmlhICAvZXRjL29zLXJlbGVhc2Ugb3Ig
L2V0Yy9vcGVud3J0X3JlbGVhc2UuClRoZSBkZXZpY2UgbmFtZSB2aWEgL2V0Yy9ib2FyZC5qc29u
IGluY2x1ZGluZyB0aGUgZGVmYXVsdCBzd2l0Y2gKY29uZmlndXJhdGlvbi4gVGhlIFNvQydzIGNw
dSB0eXBlIGFuZCBudW1iZXIgb2YgY3B1IGNvcmVzIGlzIGF2YWlsYWJsZQp0aHJvdWdoIC9wcm9j
L2NwdWluZm8gKG9yIHRoZSBleHRlcm5hbCBsc2NwdSB0b29sKSBhbmQgdGhlIGF2YWlsYWJsZQpt
ZW1vcnkgaXMgcHJpbnRlZCBieSBmcmVlIG9yIGNhbiBiZSBwYXJzZWQgZnJvbSAvcHJvYy9tZW1p
bmZvLgoKV2hhdCdzIG1vcmUgdHJpY2t5IHdvdWxkIGJlIHRvIGdldCB0aGUgbGVkcyBhbmQgd2lm
aS4KSXQncyBwb3NzaWJsZSB0byBleHRyYWN0IHNvbWUgaW5mb3JtYXRpb24gYWJvdXQgdGhlIExF
RHMgZnJvbQovc3lzL2NsYXNzL2xlZHMvKiAuIFdoaWxlIGl3aW5mbyBwaHlbMDEyMy4uXSBodG1v
ZGVsaXN0L2ZyZXFsaXN0L2luZm8KY2FuIGV4dHJhY3QgdGhlIHN1cHBvcnRlZCBIVCBtb2Rlcywg
Y2hhbm5lbHMgYW5kIChpZiBwcm92aWRlZCkgdGhlCmRldmljZSB0eXBlLgoKQmVjYXVzZSB3aXRo
IHNvbWV0aGluZyBsaWtlIHRoYXQsIHlvdSBjb3VsZCBqdXN0ICJudWRnZSIgcGVvcGxlIHRvIGRv
Cml0IGJ5IHBvaW50aW5nIHRvIGl0LiAKIApSZWdhcmRzLApDaHJpc3RpYW4KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
