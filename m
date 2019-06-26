Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FB25650C
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 11:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cehDJFBU56Oti2s6rDn2Q8jOVCO/ya5WCcPRsfugBQQ=; b=Ee7AMPf33NEQWD6r0URQziwkA
	tVEsMQNh758IodxtRqHM+ZBkc0X5jZLVw75dAqoI7UFt1qm282/+v8ZFlVMFGZTiBZGTORuG7sNP6
	HPqS0zHKcQGTeOE9gWa3E//Bl8xcQKYBwqgQRPPQCsY77x1V6FPt64sNLJtwbJ7e4mwBYpWgZuA9v
	XYy5Qk+WQZ/x8rwE7iweWu1Vwto9S2FWnpEDazuG7ljPNJD9GWSNB30jovCwpRaTBZQEF1wMNXZU4
	2urRQc+J9UrMQ8Vn5b74IOo/Ne39eVXZmLE0Ys7s6/69j7HYm85iOUWyEPtFK7kkWdPHHQaAxKdK+
	/11SGsT8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3pS-0000YP-0p; Wed, 26 Jun 2019 09:02:58 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3p4-0000WR-ON
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 09:02:37 +0000
Received: by mail-ed1-x543.google.com with SMTP id e3so2141444edr.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 26 Jun 2019 02:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=w2L2Hajv9PIpEiSPcd2iMZBJama35kkHvEOLeJ/kDAA=;
 b=ySK9HG9uS4hLtQo1ChuJIg/jsIHaQxKY+vodxF0S7s2ImwnzETMI74NHs5ieGHV7F7
 UV8OrzFByx/3O5/0izW9UW/UfEnhbtZ8UmuMr53TZionjVy3PX3A7Zlm9B01K2rlb4IP
 BPD7IZtikpsD0L4rEGu2GFu6swoCmIQPnq8KwB509q8Y5Y/UxHcJ7Zd0MOrJC4vCzJ6w
 6FER4vgONcpFc2vAloB0ChPyIJFHi9Qc2UccSQGsga+Qp8NEVoHii6b0O+B9y78gAhyY
 F2ZnqbWBZAZfSShh57iVr5liTt/fCM3NlAzJ92QgKnZW/HNgnbhtpHb9TqKxeoliPfOM
 aWMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=w2L2Hajv9PIpEiSPcd2iMZBJama35kkHvEOLeJ/kDAA=;
 b=cp8yy+om2sTXM/aZYfQw+mfqRs74xMN0rwTUrncJ+L1ecC4QuK85l8ZHsfwYChjq5/
 HAl8cCgXCVgZONzLzCaS++RdxW/QF2e1hSccTjRx+l74xoHcnNZ3CMu2zF1z2qqhAqxI
 4uES1IS+LsH0sQEgHGCFi+ZzwD6LxvEL5jbiCAS1yuYYb2UlOslM8mn7xOFtIAOImBET
 l85jY/xEPZh5zau4PUGT1UNMltXmt9Y0c6ipGPmJi7cjRd3lOQBgTuM2IiIx73qf1mDB
 Usn0X+uFT6enNkbD/e0SO/qRT1aHD1tOCYuAhWa5cKT+qVdq3piXlGZgO27Oiu4p4nvD
 ztAw==
X-Gm-Message-State: APjAAAXz9OLWGvre8xDtSjq9QVv+EOW6WS3QH1p8IIvA8d3Ocr5B+/6D
 OPqY05xGnoEYXvMr2273EW68Xult+bl4Dg==
X-Google-Smtp-Source: APXvYqzslsqOWyrWuOY43et5w0hzsZRryq6vSUnZg/8cR4WW7demHOyEHauHippKF2UgKIOgXgpQfw==
X-Received: by 2002:a50:e619:: with SMTP id y25mr3764669edm.247.1561539750755; 
 Wed, 26 Jun 2019 02:02:30 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id n7sm2812974ejl.58.2019.06.26.02.02.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 02:02:30 -0700 (PDT)
To: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
Date: Wed, 26 Jun 2019 11:02:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020234_933740_2D82DAD2 
X-CRM114-Status: GOOD (  22.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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

Ck9uIDI1LjA2LjE5IDE1OjU0LCBCZW4gR3JlZWFyIHdyb3RlOgo+Cj4KPiBPbiAwNi8yNS8yMDE5
IDAyOjUzIEFNLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4+Cj4+IE9uIDI0LjA2LjE5IDIyOjA0
LCBCZW4gR3JlZWFyIHdyb3RlOgo+Pj4gT24gNi8yNC8xOSA4OjMyIEFNLCBLb2VuIFZhbmRlcHV0
dGUgd3JvdGU6Cj4+Pj4gSGkgQmVuLAo+Pj4+IEhpIEFsbCwKPj4+Pgo+Pj4+IFNvIEknbSBnb2lu
ZyB0byBnaXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+PiBBcyB0aGUgSUJTUyBmdW5jdGlvbmFs
aXR5IGlzIGhlYXZpbHkgYWR2ZXJ0aXNlZCBhcyBhIGRlbHRhIHRvIAo+Pj4+IG1haW5saW5lLCBp
dCB3b3VsZCBiZSB2ZXJ5IG5pY2UgdG8gZ2V0IGl0IHdvcmtpbmcgYWxzbyA6KQo+Pj4+Cj4+Pj4g
VGVzdGluZyB0aGUgbGF0ZXN0IGF0aDEway1jdCBkcml2ZXIgYW5kIGZpcm13YXJlIHNlZW1zIHRv
IGJlIGEgc3RlcCAKPj4+PiBiYWNrIGNvbXBhcmVkIHRvIHJvdWdobHkgYSBtb250aCBhZ28uCj4+
Pj4KPj4+PiBJJ20gY3VycmVudGx5IHNlZWluZyB0aGUgZmlybXdhcmUgY3Jhc2hpbmcsIHdoaWNo
IHdhcyBub3QgdGhlIGNhc2UgCj4+Pj4gYmVmb3JlOgo+Pj4+Cj4+Pj4KPj4+PiBhdGgxMGstY3Qg
KyBodHQtZnc6Cj4+Pj4KPj4+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcvN1N5OXl4NnMKPj4+
Cj4+PiBMb29rcyBsaWtlIGZpcm13YXJlIHJhbiBvdXQgb2Ygc29tZSBXTUkgZXZlbnQgYnVmZmVy
cyBhbmQgY3Jhc2hlZCAKPj4+IGluc3RlYWQgb2YgaGFuZGxpbmcKPj4+IGl0IG1vcmUgZ3JhY2Vm
dWxseS4KPj4+Cj4+PiBQbGVhc2UgdHJ5IHRoZSBhdHRhY2hlZCAodW50ZXN0ZWQpIGZpcm13YXJl
IGFuZCBzZWUgaWYgaXQgYmVoYXZlcyAKPj4+IGJldHRlci4KPj4+Cj4+IEhpIEJlbiwKPj4KPj4g
MSBzdGVwIGZvcndhcmQgaGVyZS4KPj4KPj4gSSdtIG5vdCBzZWVpbmcgY3Jhc2hlcyBhbnltb3Jl
IHVzaW5nIHRoZSB0ZXN0LWZpcm13YXJlLgo+Pgo+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcv
NFplWHU3aXcKPj4KPj4KPj4gSSd2ZSBsaW5rZWQgdXAgMiBJQlNTIGRldmljZXMgKHdhdmUgMSwg
VkhUODApCj4+Cj4+IE9MU1IgdHJhZmZpYyAoVURQKSB3b3JrcyBhbmQgcGFja2V0cyBoZXJlIGFy
ZSBuaWNlbHkgZ29pbmcgYmFjayAmIGZvcnRoLgo+Pgo+PiBTaW1wbHkgcGluZ2luZyAoSUNNUCkg
YmV0d2VlbiB0aGUgMiBkZXZpY2VzIGRvZXMgbm90IHdvcmsuCj4+Cj4+IFdoZW4gc2VuZGluZyAx
MDAgcGluZ3MsICg2NCBieXRlIGxhcmdlKcKgIHNvbWV0aW1lcyAxIGdldHMgdGhyb3VnaCAuLiAK
Pj4gYnV0IHdpdGggYSBsYXRlbmN5IG9mID4gNTAwbXMKPj4KPj4KPj4gSSB0aGluayBpZiB0aGUg
c3BsYXQgYW5kIHRoZSBiZWFjb24gc3BhbSBiZWxvdyBjb3VsZCBiZSBmaXhlZCAuLiB0aGlzIAo+
PiB3b3VsZCBiZSBhIG1ham9yIHN0ZXAgZm9yd2FyZDoKPj4KPj4gW8KgwqAgMzAuMzI4NDIzXSAt
LS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPj4gW8KgwqAgMzAuMzMzMjUxXSBX
QVJOSU5HOiBDUFU6IDAgUElEOiAxNTc4IGF0IAo+PiAvbW50L3JhbWRpc2sva29lbi9maXJtd2Fy
ZS9idWlsZHMvZ2VuZXJpY19yYjkyMi9idWlsZF9kaXIvdGFyZ2V0LW1pcHNfMjRrY19tdXNsL2xp
bnV4LWFyNzF4eF9taWtyb3Rpay9hdGgxMGstY3QtMjAxOS0wNS0wOC1mOThiNmRjNC9hdGgxMGst
NC4xOS9tYWMuYzo2NTYzIAo+PiBhdGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSsweGM3Yy8weDEx
NWMgW2F0aDEwa19jb3JlXQo+PiBbwqDCoCAzMC4zNTU2MzZdIE1vZHVsZXMgbGlua2VkIGluOiBt
YnQgYXRoOWsgYXRoOWtfY29tbW9uIHFjc2VyaWFsIAo+PiBwcHBvZSBwcHBfYXN5bmMgb3B0aW9u
IGNkY19tYmltIGF0aDlrX2h3IGF0aDEwa19wY2kgYXRoMTBrX2NvcmUgYXRoIAo+PiB1c2Jfd3dh
biBzaWVycmFfbmV0IHNpZXJyYSBybmRpc19ob3N0IHFtaV93d2FuIHBwcG94IHBwcF9nZW5lcmlj
IAo+PiBtYWM4MDIxMSBpcHRhYmxlX25hdCBpcHRhYmxlX21hbmdsZSBpcHRhYmxlX2ZpbHRlciBp
cHRfUkVKRUNUIAo+PiBpcHRfTUFTUVVFUkFERSBpcF90YWJsZXMgaHVhd2VpX2NkY19uY20gZnRk
aV9zaW8gY2ZnODAyMTEgY2RjX3N1YnNldCAKPj4gY2RjX25jbSBjZGNfZXRoZXIgeHRfdGltZSB4
dF90Y3B1ZHAgeHRfc3RhdGUgeHRfbmF0IHh0X211bHRpcG9ydCAKPj4geHRfbWFyayB4dF9tYWMg
eHRfbGltdAo+PiBbwqDCoCAzMC40MjczMzFdwqAgbmxzX3V0ZjggbmxzX2lzbzg4NTlfMSBubHNf
Y3A0MzcgYXV0aGVuYyAKPj4gZWhjaV9wbGF0Zm9ybSBzZF9tb2Qgc2NzaV9tb2QgZWhjaV9oY2Qg
Z3Bpb19idXR0b25faG90cGx1ZyBleHQ0IAo+PiBtYmNhY2hlIGpiZDIgdXNiY29yZSBubHNfYmFz
ZSB1c2JfY29tbW9uIHB0cCBwcHNfY29yZSBtaWkgYWVhZCAKPj4gY3J5cHRvX251bGwgY3J5cHRv
bWdyIGNyYzMyY19nZW5lcmljIGNyeXB0b19oYXNoCj4+IFvCoMKgIDMwLjQ0ODAxN10gQ1BVOiAw
IFBJRDogMTU3OCBDb21tOiB3cGFfc3VwcGxpY2FudCBOb3QgdGFpbnRlZCAKPj4gNC4xNC4xMjkg
IzAKPgo+IFBsZWFzZSBsb29rIGluIHlvdXIgY29kZSBhbmQgbGV0IG1lIGtub3cgdGhlIHNvdXJj
ZSBhcm91bmQgdGhlIGxpbmUgaW4gCj4gbWFjLmMgKDY1NjMpIHRoYXQgaXMgc3BsYXR0aW5nLgo+
Cj4gQWxzbywgeW91IG1pZ2h0IGdyYWIgdGhlIGxhdGVzdCBhdGgxMGstY3QgcmVwbywgaXQgaGFz
IGEgdHdlYWsgdGhhdCAKPiBtaWdodCBmaXggdGhlIFNXQkEgb3ZlcnJ1bgo+IG1lc3NhZ2VzLgo+
Cj4gaHR0cHM6Ly9naXRodWIuY29tL2dyZWVhcmIvYXRoMTBrLWN0Cj4KPiBUaGFua3MsCj4gQmVu
Cj4KSGkgQmVuLAoKSGVyZSBpcyB0aGUgb3V0cHV0IGJhc2VkIG9uIHRoZSBsYXRlc3QgZ2l0IEhF
QUQgb2YgeW91ciBjdCB0cmVlLCAKY29tYmluZWQgd2l0aCB0aGUgdGVzdCBmaXJtd2FyZToKCmh0
dHBzOi8vcGFzdGViaW4uY29tL3Jhdy9rd0M2YzE4SgoKClJlZ2FyZHMsCgpLb2VuCgo+PiBbwqDC
oCAzMC40NTQ5MDZdIFN0YWNrIDogODA1MDAwMDAgODA0YzA4NzAgMDAwMDAwMDAgMDAwMDAwMDAg
ODA0OTU0MDQgCj4+IDg2ZmM1YTI0IDg2MDY0ODVjIDgwNGU3MzA3Cj4+IFvCoMKgIDMwLjQ2MzQw
Ml3CoMKgwqDCoMKgwqDCoMKgIDgwNDkxNWM4IDAwMDAwNjJhIDgwNTQzN2QwIDAwMDAxOWEzIDg3
ZDFlZDI4IAo+PiAwMDAwMDAwMSA4NmZjNTlkOCBlYmIwNTllOAo+PiBbwqDCoCAzMC40NzE4ODBd
wqDCoMKgwqDCoMKgwqDCoCAwMDAwMDAwMCAwMDAwMDAwMCA4MDU0MDAwMCAwMDAwNjhlOCAwMDAw
MDAwMCAKPj4gMDAwMDAwMDAgMDAwMDAwMDcgMDAwMDAwMDAKPj4gW8KgwqAgMzAuNDgwMzczXcKg
wqDCoMKgwqDCoMKgwqAgMDAwMDAxMjMgZjU1YjI1MzYgMDAwMDAxMjIgMDAwMDAwMDAgODAwMDAw
MDAgCj4+IDAwMDAwMDAwIDg3MTUyNTA0IDg3MTBjY2M0Cj4+IFvCoMKgIDMwLjQ4ODg2M13CoMKg
wqDCoMKgwqDCoMKgIDAwMDAwMDA5IDAwMDAxOWEzIDg3ZDFlZDI4IDg3NmZkMDAwIDAwMDAwMDAw
IAo+PiA4MDJhMzk2NCAwMDAwMDAwMCA4MDU0MDAwMAo+PiBbwqDCoCAzMC40OTczNTVdwqDCoMKg
wqDCoMKgwqDCoCAuLi4KPj4gW8KgwqAgMzAuNDk5ODM5XSBDYWxsIFRyYWNlOgo+PiBbwqDCoCAz
MC41MDIzMjBdIFs8ODAwNmM3YWM+XSBzaG93X3N0YWNrKzB4NTgvMHgxMDAKPj4gW8KgwqAgMzAu
NTA2ODM4XSBbPDgwMDg2ZGUwPl0gX193YXJuKzB4ZTQvMHgxMTgKPj4gW8KgwqAgMzAuNTEwOTk0
XSBbPDgwMDg2ZWE0Pl0gd2Fybl9zbG93cGF0aF9udWxsKzB4MWMvMHgyOAo+PiBbwqDCoCAzMC41
MTYxNThdIFs8ODcxMGNjYzQ+XSBhdGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSsweGM3Yy8weDEx
NWMgCj4+IFthdGgxMGtfY29yZV0KPj4gW8KgwqAgMzAuNTIzNTA1XSAtLS1bIGVuZCB0cmFjZSA4
M2ZkMzU3MWUzMTAyNDVhIF0tLS0KPj4gW8KgwqAgMzMuMTcyODUyXSB3bGFuMDogVHJpZ2dlciBu
ZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgo+PiBbwqDCoCAzMy4yMzc0MTZdIHdsYW4w
OiBUcmlnZ2VyIG5ldyBzY2FuIHRvIGZpbmQgYW4gSUJTUyB0byBqb2luCj4+IFvCoMKgIDMzLjI0
MzMxN10gd2xhbjA6IFRyaWdnZXIgbmV3IHNjYW4gdG8gZmluZCBhbiBJQlNTIHRvIGpvaW4KPj4g
W8KgwqAgMzMuMjQ5MjA1XSB3bGFuMDogVHJpZ2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElCU1Mg
dG8gam9pbgo+PiBbwqDCoCAzMy4zMDUyMTBdIHdsYW4wOiBUcmlnZ2VyIG5ldyBzY2FuIHRvIGZp
bmQgYW4gSUJTUyB0byBqb2luCj4+IFvCoMKgIDM0LjA0OTYxNF0gd2xhbjA6IFRyaWdnZXIgbmV3
IHNjYW4gdG8gZmluZCBhbiBJQlNTIHRvIGpvaW4KPj4gW8KgwqAgMzQuMTE1MzY5XSB3bGFuMDog
VHJpZ2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgo+PiBbwqDCoCAzNC4xODk4
MjNdIHdsYW4wOiBTZWxlY3RlZCBJQlNTIEJTU0lEIGZhOjc3Ojc4OjU1OmFmOjdiIGJhc2VkIG9u
IAo+PiBjb25maWd1cmVkIFNTSUQKPj4gW8KgwqAgMzQuMjgwNTQwXSBhdGgxMGtfcGNpIDAwMDA6
MDE6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgCj4+IHNraXBwZWQgb2xkIGJlYWNvbgo+
PiBbwqDCoCAzNC4yODgwMDJdIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4g
b24gdmRldiAwLCAKPj4gc2tpcHBlZCBvbGQgYmVhY29uCj4+IFvCoMKgIDM0LjI5NTkyNF0gYXRo
MTBrX3BjaSAwMDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIAo+PiBza2lwcGVk
IG9sZCBiZWFjb24KPj4gW8KgwqAgMzQuMzAzNDA2XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDog
U1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgCj4+IHNraXBwZWQgb2xkIGJlYWNvbgo+PiBbwqDCoCAz
NC4zMTA4MzldIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAw
LCAKPj4gc2tpcHBlZCBvbGQgYmVhY29uCj4+IFvCoMKgIDM0LjMxODI4MF0gYXRoMTBrX3BjaSAw
MDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIAo+PiBza2lwcGVkIG9sZCBiZWFj
b24KPj4gW8KgwqAgMzQuMzI1NzE0XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVy
cnVuIG9uIHZkZXYgMCwgCj4+IHNraXBwZWQgb2xkIGJlYWNvbgo+PiBbwqDCoCAzNC4zMzMxNDhd
IGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCAKPj4gc2tp
cHBlZCBvbGQgYmVhY29uCj4+IFvCoMKgIDM0LjM0MDU2N10gYXRoMTBrX3BjaSAwMDAwOjAxOjAw
LjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIAo+PiBza2lwcGVkIG9sZCBiZWFjb24KPj4gW8Kg
wqAgMzQuMzQ4MDAzXSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZk
ZXYgMCwgCj4+IHNraXBwZWQgb2xkIGJlYWNvbgo+PiAuLi4KPj4gLi4uCj4+Cj4+IFRoYW5rcyBm
b3IgeW91ciBzd2lmdCByZXBseSBzbyBmYXIgYW5kIHRoZSB0ZXN0LWZpcm13YXJlLgo+Pgo+PiBS
ZWdhcmRzLAo+Pgo+PiBLb2VuCj4+Cj4+Pgo+Pj4+IGF0aDEway1jdCArIG5vbi1odHQtZnc6Cj4+
Pj4KPj4+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcvYnFWcVFtWHEKPj4+Pgo+Pj4+Cj4+Pj4g
TWl4aW5nIHVwc3RyZWFtIGF0aDEwayBkcml2ZXIgd2l0aCB0aGUgbm9uLWh0dCBDVCBmdyBkb2Vz
IG5vdCB3b3JrLgo+Pj4+Cj4+Pj4gRXJyb3JzIGFyZSBzZWVuIGhlcmUgcmVnYXJkaW5nIG1pc3Np
bmcgSUUncyBhbmQgc3R1ZmYuCj4+Pj4gQWxzbyBJQlNTIGZ1bmN0aW9uYWxpdHkgaXMgbm90IHNo
b3duIHdoZW4gcnVubmluZyAnaXcgbGlzdCcKPj4+Cj4+PiBJQlNTIHJlcXVpcmVzIGN0IGRyaXZl
ciBwbHVzIGN0IGZpcm13YXJlLCBhdCBsZWFzdC4KPj4KPj4gQWgsIG9rLiA6LSkKPj4KPj4gVGhv
dWdodCBpdCB3YXMgcG9zc2libGUgYmFzZWQgb24gdGhpcyBvbmUgOgo+Pgo+PiBodHRwczovL3d3
dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC13aXJlbGVzcy9tc2cxMzc4MjcuaHRtbAo+Pgo+Pgo+
Pj4KPj4+IEknZCBleHBlY3QgdGhlIHJlZ3VsYXIgZHJpdmVyIHRvIHdvcmsgaW4gbm9ybWFsIFNU
QS9BUCBtb2RlLCB0aG91Z2ggCj4+PiBpdCB3b3VsZCBsaWtlbHkKPj4+IHdhcm4gYWJvdXQgSUVz
LsKgIFNob3VsZCBiZSB3YXJuaW5nIG9ubHkgdGhvdWdoLgo+Pj4KPj4+IFRoYW5rcywKPj4+IEJl
bgo+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gS2luZCBSZWdhcmRzLAo+Pj4+Cj4+Pj4gS29lbgo+Pj4+Cj4+
Pgo+Pj4KPj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
