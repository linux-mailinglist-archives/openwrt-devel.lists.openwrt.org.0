Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DE7F0910
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 23:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkHs3HVql984czS7qClYIC7zaKtI7pfoaOMLMX/ygvM=; b=ji8e529cyBIHRj
	GSUuw5mPaffFZIK4QT4IwAmg+QISs4XY82Ch7xKMc4+Q6cZ6F5x0Nm21KfBQin41nMCjNGfa2f6/W
	IwAkGviZDfqZnigG65eJyv5rX3h8qe4axry9s0+m3fWdhoE9BGUMQEbh6N4d3zhlgtdfnP5A8LoJr
	7gU9HOVLms2ClFq+HOhCOVF+XhsChyCTSghvV27ewA7uZqgbWTN4x419AvGuvmBFU/S+6D+mro2ta
	Y4wDuDcEUVK6XBfeKssUckY3AzYAeSu3iF7qvv/JZj0iAgnNVa14B4B/6hdTDrgY8wBJgU8sZoGvk
	laSBG3wrPax2PEVROKbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6yZ-0001LD-Ii; Tue, 05 Nov 2019 22:06:59 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6yS-0001Jj-Lm
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 22:06:54 +0000
Received: by mail-wm1-x32b.google.com with SMTP id c17so1099126wmk.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 Nov 2019 14:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=CA9O0J6Viqa0yZNin/XIWNOBNh0rPVpZ7DtJbk+cde4=;
 b=jZGuglJ8PwC82i7sLkDtAadBA+TJZ9/60p02Y21ewKpGRkb6znC8f09cRu1k7oP8bq
 wN9mty5ehm1yAYXNLAyVyCp5a4xUeYKegD9PO7SM/lau3UbzALN+MlMKmV2eNycVb8CQ
 WDWiA2xTqryIWaeOogYRYpooCfc+jqSgNduM2UCVmBrtobQsnGnBLer5YKo3hQJW2HCa
 00CZC/Uc/wM9KF5O7Ltfba5YEfo3KpdkmM82JgUUV3iFDhjbGgw4sB8MR4C3SpJnDOQl
 3u7fd8L5e8zNdbG90qSRT8hqR1qRlVA8C5tu0TmHk0WajKBw/tlxAYawyo8LgPc8tvXj
 o8/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=CA9O0J6Viqa0yZNin/XIWNOBNh0rPVpZ7DtJbk+cde4=;
 b=ah6dV9OY34bvQpxUF/PIXQFRzELypnfFn0yffS54pbYxrKCmOi+H48+9hpTEp3ArXZ
 H4eOwPRSflEMjLwwHDI2SLkNJCt1VhgKsm1JZWp/e5fZg/JKOVk4w16HscoGSuqENFh5
 rzDZZFH+x+ySogdTRNKU0LV1oGxJojkF13In8khTi7hW6u7MBajsr8OF6LwPpNX3nDtY
 7MIQ9MTUzL9etby3boBQgTb14kq2v7TTDkIUthJD5Z6HgZ0+eMUPU5lTHLWEMsLEFPQO
 oTAYAM46Z6djPelK7Cjb+2aZnBVaDaQZkh2rSF2Dpe/HgsRkUZGf71tRB9KMKEWPDft1
 djVQ==
X-Gm-Message-State: APjAAAVYLq4DoaVZ2AWmre62ZXdJ0gmHMbp+nCNRbKkpJpnSKManGe4o
 ZXYtu6Q7AlDrtID62IhYxCU=
X-Google-Smtp-Source: APXvYqxLRLf+YCFDRLReS6kxZHuMyi2T9DgNMHch4NfC0YFyx99+lo3k5aXJIOXuLBxUboZBeN2kHg==
X-Received: by 2002:a1c:814b:: with SMTP id c72mr1008745wmd.167.1572991610555; 
 Tue, 05 Nov 2019 14:06:50 -0800 (PST)
Received: from [192.168.0.2]
 (host120-32-dynamic.15-87-r.retail.telecomitalia.it. [87.15.32.120])
 by smtp.gmail.com with ESMTPSA id w19sm720689wmk.36.2019.11.05.14.06.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 14:06:49 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-Mailer: iPhone Mail (16G77)
In-Reply-To: <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
Date: Tue, 5 Nov 2019 23:06:48 +0100
Message-Id: <F45BEDCE-561C-497C-95A5-099BB15DFF6C@gmail.com>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <87r22m1dp3.fsf@miraculix.mork.no>
 <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_140652_713103_BC7E045C 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: openwrt-devel@lists.openwrt.org, Birger Koblitz <mail@birger-koblitz.de>,
 =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QlRXLCBiZWluZyBhYmxlIHRvIHRvZ2dsZSBvbiBhbmQgb2ZmIFVTQiBwb3dlciBpcyBlc3NlbnRp
YWwgaW4gc29tZSBjYXNlcy4gQ2FuIHRoaXMgYmUgZG9uZSB3aXRoIGhvZz8gVGhhbmtzIQpFCiAK
CgoKPiBJbCBnaW9ybm8gNSBub3YgMjAxOSwgYWxsZSBvcmUgMTc6NDQsIEFkcmlhbiBTY2htdXR6
bGVyIDxtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGU+IGhhIHNjcml0dG86Cj4gCj4gSGksCj4gCj4+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0
bzpvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddIE9uCj4+IEJlaGFsZiBP
ZiBCasO4cm4gTW9yawo+PiBTZW50OiBEaWVuc3RhZywgNS4gTm92ZW1iZXIgMjAxOSAxNzozOAo+
PiBUbzogQWRyaWFuIFNjaG11dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+Cj4+
IENjOiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnOyBCaXJnZXIgS29ibGl0eiA8bWFp
bEBiaXJnZXIta29ibGl0ei5kZT4KPj4gU3ViamVjdDogUmU6IFtPcGVuV3J0LURldmVsXSBbUEFU
Q0ggdjJdIGF0aDc5OiB1c2UgZ3Bpb19ob2cgaW5zdGVhZCBvZiBncGlvLQo+PiBleHBvcnQKPj4g
Cj4+IEFkcmlhbiBTY2htdXR6bGVyIDxmcmVpZnVua0BhZHJpYW5zY2htdXR6bGVyLmRlPiB3cml0
ZXM6Cj4+IAo+Pj4gVGhpcyBwYXRjaCBjb252ZXJ0cyBhbGwgRFRTIGZpbGVzIHdpdGggc2V0dGlu
Z3MgdGhhdCBub3JtYWxseSBkbwo+Pj4gbm90IG5lZWQgdXNlciBpbnRlcmFjdGlvbiwgZS5nLiBw
b3dlciBmb3IgZXh0ZXJuYWwgVVNCIHBvcnRzLCB0bwo+Pj4gZ3Bpb19ob2cuCj4+IAo+PiBXb3Vs
ZG4ndCBpdCBiZSBiZXR0ZXIgdG8gbWFwIHRoZXNlIGFzIGZpeGVkIHJlZ3VsYXRvcnM/ICBUaGVu
IHlvdSBjb3VsZAo+PiBldmVudHVhbGx5IGxpbmsgdGhlbSB0byB0aGUgY29ubmVjdGVkIHBvcnRz
L2NvbnRyb2xsZXJzLCBhbmQgYWxsb3cgdGhlbQo+PiB0byBiZSBhdXRvbWF0aWNhbGx5IHR1cm5l
ZCBvZmYgd2hlbiBub3QgbmVlZGVkLgo+IAo+IEknbSBubyBleHBlcnQgZm9yIHRoaXMgc3R1ZmYu
Cj4gCj4gQnV0LCBiYXNlZCBvbiB0aGUgZGlzY3Vzc2lvbiBoZXJlLCB0aGUgb3Bwb3NpdGUgaGFz
IGJlZW4gaWRlbnRpZmllZCBhcyBzdXBlcmlvciBzb2x1dGlvbiAoZGlzY3Vzc2luZyBuYW5kIHN1
YnRhcmdldCk6Cj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzIxODQj
ZGlzY3Vzc2lvbl9yMzQyMTM2NjM1Cj4gCj4gRGVzcGl0ZSwgSSByZW1lbWJlciBhIGNvbW1lbnQg
dGhhdCBmaXhlZCByZWd1bGF0b3JzIHdvbid0IGJlIGF2YWlsYWJsZSBvbiBhbGwgU09Dcy4uLgo+
IAo+IEJlc3QKPiAKPiBBZHJpYW4KPiAKPiAKPj4gCj4+IAo+PiBCasO4cm4KPj4gCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
