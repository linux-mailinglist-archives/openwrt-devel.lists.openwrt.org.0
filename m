Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD3B5289C
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 11:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4N5zEEAeHvkU0BPOdJbSqQmglmUl+vdO6pGBbH5PrE4=; b=tBVcmPwly73GdlWQEn+eC09Wo
	HDHyeIeDOpBq+gWs4mRCx7CYW0gtPp2qGv7CMBXO93FdkSe2JNSDQ/PY+EJOIo711X+6y7Xa1bDsv
	QQ0e1CWIuz9WmTgpCp8KmLFLHWDl85Z0ReMxmqKgL7IeLMjmydMh/jrvq9reJJ+5wLa/qS/mcVvZD
	bf9fe+LuRJ8ThPfvJVWNxk0aZ+o539L6fqf0DJnjGrTUHO6ttB4Ph/A46S+7dPDrEmj/eR+Phapa4
	bU9c+pkKJ2OtSpsEbOnxSZNWiBEiuQd4gFk3tOwGWRxENRnQevtZT/jNLTyQxBNuGugo+LIm/Ea0t
	3WmwU2NEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfi9J-00050w-A8; Tue, 25 Jun 2019 09:54:01 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfi95-000509-S1
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 09:53:50 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so26190644edr.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 02:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=9zTyP1D7dofH7VSwyRdoFqCJO9smIoDKGIE2AjU9VwY=;
 b=YGJlVOmUXmzKjmdapntDvba3mjw+GgE2NA8BlmJxOdLiEY5haiERlZr980qSX77uM4
 g0Fxrl4b9YyGvI22Ay53bspH7thcz0AgYGgIpcqMvkfFO3R9Y1/ewEslla5Pd3BPuJJ7
 7IkoWSPJYIJic7zYzIP/lV64d8kmxFw9+VSs2L3ZWsDJZix9gQW+ntRvUTW0CGoGlZPC
 tXIG0BsK1y0SPHtjSMlmDZXCrgSqPYvnt4ddSw5mfn71GjAR7U9mHn7cfVJsPjGObuuL
 FvBJEKDDE3T5Ib1SUoeOaTp2dl2DajM6oR8NvsEJCzEfVwDQ5hCDfX/2SohgcFV6sk/0
 DtSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9zTyP1D7dofH7VSwyRdoFqCJO9smIoDKGIE2AjU9VwY=;
 b=qwcWH1giInti2Ui4qRyZ2tHyIPXsXnl6tOL21DEQfwhkAhyasHYEPXdjoriBXvfExO
 FeK79X/CM7+TQe8RKS0jfLhCE7m/USxntlvnSdgGnjh3EKPqemN7fHIFWXGGsKguu761
 ndOjyui2DC3HRskoarIJU3g2Ob7StCEr5tWnFcoilFAHyv1H5gEW4bYirKfvvImVTFV9
 VhpUOUw/yBbP7p4/qejDR6qFvzBH+EYIpdG+pC2if2VtW+o4BKdDPQYcgzlrsWJ+KFov
 5rT/4lepYRpFRYebUE5/phCLDyVsRAkVRXWMu9kN6AteFJlBImwzP9P0bY0w3zKOH8of
 BMWw==
X-Gm-Message-State: APjAAAXCR0bKCL1OGebuxcYH+Cy9kcXVsViGoK07UpxD0TCpW8/MnwIS
 3DncjVJ6XP3a7prs1Do8YaHVh55xQYkIig==
X-Google-Smtp-Source: APXvYqyFhNacDXLY85AhAk8IJWuaOv9nVE4WsvVhA95Kivj+nRUxj0r5ZTzzXd/5zumvcQfrYrHMyA==
X-Received: by 2002:a50:95b0:: with SMTP id w45mr48895856eda.12.1561456425702; 
 Tue, 25 Jun 2019 02:53:45 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id p15sm2360998ejb.6.2019.06.25.02.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 02:53:45 -0700 (PDT)
To: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
Date: Tue, 25 Jun 2019 11:53:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_025348_063719_314A80B8 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Ck9uIDI0LjA2LjE5IDIyOjA0LCBCZW4gR3JlZWFyIHdyb3RlOgo+IE9uIDYvMjQvMTkgODozMiBB
TSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+PiBIaSBCZW4sCj4+IEhpIEFsbCwKPj4KPj4gU28g
SSdtIGdvaW5nIHRvIGdpdmUgdGhpcyBhbm90aGVyIHRyeSAuLgo+PiBBcyB0aGUgSUJTUyBmdW5j
dGlvbmFsaXR5IGlzIGhlYXZpbHkgYWR2ZXJ0aXNlZCBhcyBhIGRlbHRhIHRvIAo+PiBtYWlubGlu
ZSwgaXQgd291bGQgYmUgdmVyeSBuaWNlIHRvIGdldCBpdCB3b3JraW5nIGFsc28gOikKPj4KPj4g
VGVzdGluZyB0aGUgbGF0ZXN0IGF0aDEway1jdCBkcml2ZXIgYW5kIGZpcm13YXJlIHNlZW1zIHRv
IGJlIGEgc3RlcCAKPj4gYmFjayBjb21wYXJlZCB0byByb3VnaGx5IGEgbW9udGggYWdvLgo+Pgo+
PiBJJ20gY3VycmVudGx5IHNlZWluZyB0aGUgZmlybXdhcmUgY3Jhc2hpbmcsIHdoaWNoIHdhcyBu
b3QgdGhlIGNhc2UgCj4+IGJlZm9yZToKPj4KPj4KPj4gYXRoMTBrLWN0ICsgaHR0LWZ3Ogo+Pgo+
PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcvN1N5OXl4NnMKPgo+IExvb2tzIGxpa2UgZmlybXdh
cmUgcmFuIG91dCBvZiBzb21lIFdNSSBldmVudCBidWZmZXJzIGFuZCBjcmFzaGVkIAo+IGluc3Rl
YWQgb2YgaGFuZGxpbmcKPiBpdCBtb3JlIGdyYWNlZnVsbHkuCj4KPiBQbGVhc2UgdHJ5IHRoZSBh
dHRhY2hlZCAodW50ZXN0ZWQpIGZpcm13YXJlIGFuZCBzZWUgaWYgaXQgYmVoYXZlcyBiZXR0ZXIu
Cj4KSGkgQmVuLAoKMSBzdGVwIGZvcndhcmQgaGVyZS4KCkknbSBub3Qgc2VlaW5nIGNyYXNoZXMg
YW55bW9yZSB1c2luZyB0aGUgdGVzdC1maXJtd2FyZS4KCmh0dHBzOi8vcGFzdGViaW4uY29tL3Jh
dy80WmVYdTdpdwoKCkkndmUgbGlua2VkIHVwIDIgSUJTUyBkZXZpY2VzICh3YXZlIDEsIFZIVDgw
KQoKT0xTUiB0cmFmZmljIChVRFApIHdvcmtzIGFuZCBwYWNrZXRzIGhlcmUgYXJlIG5pY2VseSBn
b2luZyBiYWNrICYgZm9ydGguCgpTaW1wbHkgcGluZ2luZyAoSUNNUCkgYmV0d2VlbiB0aGUgMiBk
ZXZpY2VzIGRvZXMgbm90IHdvcmsuCgpXaGVuIHNlbmRpbmcgMTAwIHBpbmdzLCAoNjQgYnl0ZSBs
YXJnZSnCoCBzb21ldGltZXMgMSBnZXRzIHRocm91Z2ggLi4gYnV0IAp3aXRoIGEgbGF0ZW5jeSBv
ZiA+IDUwMG1zCgoKSSB0aGluayBpZiB0aGUgc3BsYXQgYW5kIHRoZSBiZWFjb24gc3BhbSBiZWxv
dyBjb3VsZCBiZSBmaXhlZCAuLiB0aGlzIAp3b3VsZCBiZSBhIG1ham9yIHN0ZXAgZm9yd2FyZDoK
ClsgICAzMC4zMjg0MjNdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQpbICAg
MzAuMzMzMjUxXSBXQVJOSU5HOiBDUFU6IDAgUElEOiAxNTc4IGF0IC9tbnQvcmFtZGlzay9rb2Vu
L2Zpcm13YXJlL2J1aWxkcy9nZW5lcmljX3JiOTIyL2J1aWxkX2Rpci90YXJnZXQtbWlwc18yNGtj
X211c2wvbGludXgtYXI3MXh4X21pa3JvdGlrL2F0aDEway1jdC0yMDE5LTA1LTA4LWY5OGI2ZGM0
L2F0aDEway00LjE5L21hYy5jOjY1NjMgYXRoMTBrX21hY192aWZfYmVhY29uX2ZyZWUrMHhjN2Mv
MHgxMTVjIFthdGgxMGtfY29yZV0KWyAgIDMwLjM1NTYzNl0gTW9kdWxlcyBsaW5rZWQgaW46IG1i
dCBhdGg5ayBhdGg5a19jb21tb24gcWNzZXJpYWwgcHBwb2UgcHBwX2FzeW5jIG9wdGlvbiBjZGNf
bWJpbSBhdGg5a19odyBhdGgxMGtfcGNpIGF0aDEwa19jb3JlIGF0aCB1c2Jfd3dhbiBzaWVycmFf
bmV0IHNpZXJyYSBybmRpc19ob3N0IHFtaV93d2FuIHBwcG94IHBwcF9nZW5lcmljIG1hYzgwMjEx
IGlwdGFibGVfbmF0IGlwdGFibGVfbWFuZ2xlIGlwdGFibGVfZmlsdGVyIGlwdF9SRUpFQ1QgaXB0
X01BU1FVRVJBREUgaXBfdGFibGVzIGh1YXdlaV9jZGNfbmNtIGZ0ZGlfc2lvIGNmZzgwMjExIGNk
Y19zdWJzZXQgY2RjX25jbSBjZGNfZXRoZXIgeHRfdGltZSB4dF90Y3B1ZHAgeHRfc3RhdGUgeHRf
bmF0IHh0X211bHRpcG9ydCB4dF9tYXJrIHh0X21hYyB4dF9saW10ClsgICAzMC40MjczMzFdICBu
bHNfdXRmOCBubHNfaXNvODg1OV8xIG5sc19jcDQzNyBhdXRoZW5jIGVoY2lfcGxhdGZvcm0gc2Rf
bW9kIHNjc2lfbW9kIGVoY2lfaGNkIGdwaW9fYnV0dG9uX2hvdHBsdWcgZXh0NCBtYmNhY2hlIGpi
ZDIgdXNiY29yZSBubHNfYmFzZSB1c2JfY29tbW9uIHB0cCBwcHNfY29yZSBtaWkgYWVhZCBjcnlw
dG9fbnVsbCBjcnlwdG9tZ3IgY3JjMzJjX2dlbmVyaWMgY3J5cHRvX2hhc2gKWyAgIDMwLjQ0ODAx
N10gQ1BVOiAwIFBJRDogMTU3OCBDb21tOiB3cGFfc3VwcGxpY2FudCBOb3QgdGFpbnRlZCA0LjE0
LjEyOSAjMApbICAgMzAuNDU0OTA2XSBTdGFjayA6IDgwNTAwMDAwIDgwNGMwODcwIDAwMDAwMDAw
IDAwMDAwMDAwIDgwNDk1NDA0IDg2ZmM1YTI0IDg2MDY0ODVjIDgwNGU3MzA3ClsgICAzMC40NjM0
MDJdICAgICAgICAgODA0OTE1YzggMDAwMDA2MmEgODA1NDM3ZDAgMDAwMDE5YTMgODdkMWVkMjgg
MDAwMDAwMDEgODZmYzU5ZDggZWJiMDU5ZTgKWyAgIDMwLjQ3MTg4MF0gICAgICAgICAwMDAwMDAw
MCAwMDAwMDAwMCA4MDU0MDAwMCAwMDAwNjhlOCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwNyAw
MDAwMDAwMApbICAgMzAuNDgwMzczXSAgICAgICAgIDAwMDAwMTIzIGY1NWIyNTM2IDAwMDAwMTIy
IDAwMDAwMDAwIDgwMDAwMDAwIDAwMDAwMDAwIDg3MTUyNTA0IDg3MTBjY2M0ClsgICAzMC40ODg4
NjNdICAgICAgICAgMDAwMDAwMDkgMDAwMDE5YTMgODdkMWVkMjggODc2ZmQwMDAgMDAwMDAwMDAg
ODAyYTM5NjQgMDAwMDAwMDAgODA1NDAwMDAKWyAgIDMwLjQ5NzM1NV0gICAgICAgICAuLi4KWyAg
IDMwLjQ5OTgzOV0gQ2FsbCBUcmFjZToKWyAgIDMwLjUwMjMyMF0gWzw4MDA2YzdhYz5dIHNob3df
c3RhY2srMHg1OC8weDEwMApbICAgMzAuNTA2ODM4XSBbPDgwMDg2ZGUwPl0gX193YXJuKzB4ZTQv
MHgxMTgKWyAgIDMwLjUxMDk5NF0gWzw4MDA4NmVhND5dIHdhcm5fc2xvd3BhdGhfbnVsbCsweDFj
LzB4MjgKWyAgIDMwLjUxNjE1OF0gWzw4NzEwY2NjND5dIGF0aDEwa19tYWNfdmlmX2JlYWNvbl9m
cmVlKzB4YzdjLzB4MTE1YyBbYXRoMTBrX2NvcmVdClsgICAzMC41MjM1MDVdIC0tLVsgZW5kIHRy
YWNlIDgzZmQzNTcxZTMxMDI0NWEgXS0tLQpbICAgMzMuMTcyODUyXSB3bGFuMDogVHJpZ2dlciBu
ZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgpbICAgMzMuMjM3NDE2XSB3bGFuMDogVHJp
Z2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgpbICAgMzMuMjQzMzE3XSB3bGFu
MDogVHJpZ2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgpbICAgMzMuMjQ5MjA1
XSB3bGFuMDogVHJpZ2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgpbICAgMzMu
MzA1MjEwXSB3bGFuMDogVHJpZ2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgpb
ICAgMzQuMDQ5NjE0XSB3bGFuMDogVHJpZ2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8g
am9pbgpbICAgMzQuMTE1MzY5XSB3bGFuMDogVHJpZ2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElC
U1MgdG8gam9pbgpbICAgMzQuMTg5ODIzXSB3bGFuMDogU2VsZWN0ZWQgSUJTUyBCU1NJRCBmYTo3
Nzo3ODo1NTphZjo3YiBiYXNlZCBvbiBjb25maWd1cmVkIFNTSUQKWyAgIDM0LjI4MDU0MF0gYXRo
MTBrX3BjaSAwMDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIHNraXBwZWQgb2xk
IGJlYWNvbgpbICAgMzQuMjg4MDAyXSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVy
cnVuIG9uIHZkZXYgMCwgc2tpcHBlZCBvbGQgYmVhY29uClsgICAzNC4yOTU5MjRdIGF0aDEwa19w
Y2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCBza2lwcGVkIG9sZCBiZWFj
b24KWyAgIDM0LjMwMzQwNl0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBv
biB2ZGV2IDAsIHNraXBwZWQgb2xkIGJlYWNvbgpbICAgMzQuMzEwODM5XSBhdGgxMGtfcGNpIDAw
MDA6MDE6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCBvbGQgYmVhY29uClsg
ICAzNC4zMTgyODBdIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRl
diAwLCBza2lwcGVkIG9sZCBiZWFjb24KWyAgIDM0LjMyNTcxNF0gYXRoMTBrX3BjaSAwMDAwOjAx
OjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIHNraXBwZWQgb2xkIGJlYWNvbgpbICAgMzQu
MzMzMTQ4XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwg
c2tpcHBlZCBvbGQgYmVhY29uClsgICAzNC4zNDA1NjddIGF0aDEwa19wY2kgMDAwMDowMTowMC4w
OiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCBza2lwcGVkIG9sZCBiZWFjb24KWyAgIDM0LjM0ODAw
M10gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIHNraXBw
ZWQgb2xkIGJlYWNvbgouLi4KLi4uCgpUaGFua3MgZm9yIHlvdXIgc3dpZnQgcmVwbHkgc28gZmFy
IGFuZCB0aGUgdGVzdC1maXJtd2FyZS4KClJlZ2FyZHMsCgpLb2VuCgo+Cj4+IGF0aDEway1jdCAr
IG5vbi1odHQtZnc6Cj4+Cj4+IGh0dHBzOi8vcGFzdGViaW4uY29tL3Jhdy9icVZxUW1YcQo+Pgo+
Pgo+PiBNaXhpbmcgdXBzdHJlYW0gYXRoMTBrIGRyaXZlciB3aXRoIHRoZSBub24taHR0IENUIGZ3
IGRvZXMgbm90IHdvcmsuCj4+Cj4+IEVycm9ycyBhcmUgc2VlbiBoZXJlIHJlZ2FyZGluZyBtaXNz
aW5nIElFJ3MgYW5kIHN0dWZmLgo+PiBBbHNvIElCU1MgZnVuY3Rpb25hbGl0eSBpcyBub3Qgc2hv
d24gd2hlbiBydW5uaW5nICdpdyBsaXN0Jwo+Cj4gSUJTUyByZXF1aXJlcyBjdCBkcml2ZXIgcGx1
cyBjdCBmaXJtd2FyZSwgYXQgbGVhc3QuCgpBaCwgb2suIDotKQoKVGhvdWdodCBpdCB3YXMgcG9z
c2libGUgYmFzZWQgb24gdGhpcyBvbmUgOgoKaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMv
bGludXgtd2lyZWxlc3MvbXNnMTM3ODI3Lmh0bWwKCgo+Cj4gSSdkIGV4cGVjdCB0aGUgcmVndWxh
ciBkcml2ZXIgdG8gd29yayBpbiBub3JtYWwgU1RBL0FQIG1vZGUsIHRob3VnaCBpdCAKPiB3b3Vs
ZCBsaWtlbHkKPiB3YXJuIGFib3V0IElFcy7CoCBTaG91bGQgYmUgd2FybmluZyBvbmx5IHRob3Vn
aC4KPgo+IFRoYW5rcywKPiBCZW4KPgo+Pgo+Pgo+PiBLaW5kIFJlZ2FyZHMsCj4+Cj4+IEtvZW4K
Pj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
