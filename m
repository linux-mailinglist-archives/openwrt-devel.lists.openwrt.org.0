Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9C01B2C5F
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 18:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4kRva8pM98OEgmrzI0dZ7dAqVTi4gqWC2vWDZ4BFLjo=; b=RSrjkVwGuW/D3xaUPQOu2T1ge
	6yUfhQ6cxaJce0kC4wIXrivkXxBFSxMTSrdi4+2JXe5aeBrEUOqxNajnGmIOl1xGIQtFVqDH2cdfu
	7AJfHcxVQmwktFyb8a0IkYLk2rBeq/O/rDn00WspBpk8gdhqzBaoPXxXBwx9e3Uo/5ao/z/4oQriz
	bc5nIsDoeq8Y71ThoOIGhjfnkrhRzAvP2wXmoFhMIzEsWolb9pOH3JqXpmIO/vGYGhDKB4Fvkcvry
	JS1xXhVL+z+Powtsf0rWAotgMkfDwDnFWACbscOBIGTXZBC6FAK9oTIpb8FZi+6zjZ6wMjMorKDGZ
	j7y0jblRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvc1-00046T-Ps; Tue, 21 Apr 2020 16:19:05 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvZ3-0001a5-2n
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 16:16:02 +0000
Received: by mail-wr1-x42b.google.com with SMTP id x18so17137979wrq.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Apr 2020 09:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=8JXuw6N5F8vbJ5PMZLCcWGCYOyO6rxLLNh5lM00HaXM=;
 b=fe4py47UWsQtlVpus7PL/gTtL3fzm+WnYoqepjcAK4y/2/fXOA0S63Nwv6QP0jbJLc
 v24pjzU4AjLOdwfUWfxF2p/Hr+yp6PWtKHDeiLsFjblgWRGE705JLE2PRjGgrC6++YgP
 spsSVYX12+jl9tTfomIKmUcIjC+c7aD5zlap7XyJS+iDCd9w2bVW3EG7c4+IaXiFA9gh
 EvS1Dyjkw4cW1TcrSBiEb+AkoT+aEKwsh2XhNTJvSwsIRTy0VCosiYsF2QgRFoWTV1lm
 qlFGdeyzaIbHh1ImJspcmgC53WoxmkyoNwCn8+N5KKC5SvE92TXqj+9Vnj0xTuK4W3H9
 /17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8JXuw6N5F8vbJ5PMZLCcWGCYOyO6rxLLNh5lM00HaXM=;
 b=gdcTpXRsxsJaoKN3Xkgv++a+aLFlzzA9GRgje0wIDHwVbpeSRrJj027/iLbknHMpdq
 KPW9HAQoD+J9nlUskAhoQ7o/a9UEk69f1/+groWxQA4N/mWWO7NfOqM+gAd1+6bOoaO1
 dK1vxcc9HP7Lwaj1bDI/m9wMOnzPiRQGEIiHH7v3QG4gVl7isF+GymKWVlwTTj1tJlRc
 PFG5pK0Xph8wzI4Iaq9rwL5aKxXa/Hbyo/RAjtsnFtBUH5NDWHsUrFPd2Aduj5QtNUN3
 lgW0ayb+vd//dOWKHDk4kXs4oEtGeK3lwJkKc/+0WIXQvsO9ZRw6YVoDM6wfdiJojcWr
 NP8Q==
X-Gm-Message-State: AGi0PuY3MeFkXV7yFwvCLk52UtJKHdrUXj936afwxVVfeN3hHs7LE7Dq
 Hq5fstjSosDxmy/hNyTf9wwNU824
X-Google-Smtp-Source: APiQypIofMEECzglzS5uyQdxxuazQwe2KB9s8yvDnzJFXKfjb6/OaTVOvKrXswEAdBod8MqqqhDzPg==
X-Received: by 2002:a5d:4485:: with SMTP id j5mr23444930wrq.427.1587485758961; 
 Tue, 21 Apr 2020 09:15:58 -0700 (PDT)
Received: from [192.168.1.230] ([151.82.115.61])
 by smtp.gmail.com with ESMTPSA id u184sm4337559wmb.13.2020.04.21.09.15.57
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 09:15:58 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <C8C1EE45-7F41-4C1D-A65A-CF3B7931298F@redfish-solutions.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <ea5a8bbc-df31-94f5-e2b9-a14bd0eca28e@gmail.com>
Date: Tue, 21 Apr 2020 18:15:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <C8C1EE45-7F41-4C1D-A65A-CF3B7931298F@redfish-solutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_091601_143719_856A266D 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Missing default CONFIG_ symbols for 5.4?
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

CgpPbiAyMS8wNC8yMCAwNzoxNSwgUGhpbGlwIFByaW5kZXZpbGxlIHdyb3RlOgo+IEnigJltIHRy
eWluZyB0byBidWlsZCB4ODYvNjQgb24gbWFzdGVyLCBhbmQgSeKAmW0gZ2V0dGluZyB0aGUgZm9s
bG93aW5nIHByb21wdHM6Cj4gCj4gVmVyaWZ5IGtlcm5lbCBzaWduYXR1cmUgZHVyaW5nIGtleGVj
X2ZpbGVfbG9hZCgpIHN5c2NhbGwgKEtFWEVDX1NJRykgW04veS8/XSAoTkVXKQo+IAo+IE5ldGZp
bHRlciBuZl90YWJsZXMgc3VwcG9ydCAoTkZfVEFCTEVTKSBbTS9uL3kvP10gbQo+ICAgIE5ldGZp
bHRlciBuZl90YWJsZXMgc2V0IGluZnJhc3RydWN0dXJlIChORl9UQUJMRVNfU0VUKSBbTS9uLz9d
IG0KPiAgICBOZXRmaWx0ZXIgbmZfdGFibGVzIG1peGVkIElQdjQvSVB2NiB0YWJsZXMgc3VwcG9y
dCAoTkZfVEFCTEVTX0lORVQpIFtOL3kvP10gKE5FVykKPiAKPiBJUHY0IG5mX3RhYmxlcyBzdXBw
b3J0IChORl9UQUJMRVNfSVBWNCkgW04veS8/XSAoTkVXKQo+IAo+IElQdjYgbmZfdGFibGVzIHN1
cHBvcnQgKE5GX1RBQkxFU19JUFY2KSBbTi95Lz9dIChORVcpCj4gCj4gRGV0ZWN0IEh1bmcgVGFz
a3MgKERFVEVDVF9IVU5HX1RBU0spIFtZL24vP10geQo+ICAgIERlZmF1bHQgdGltZW91dCBmb3Ig
aHVuZyB0YXNrIGRldGVjdGlvbiAoaW4gc2Vjb25kcykgKERFRkFVTFRfSFVOR19UQVNLX1RJTUVP
VVQpIFsxMjBdIChORVcpCj4gICAgUGFuaWMgKFJlYm9vdCkgT24gSHVuZyBUYXNrcyAoQk9PVFBB
UkFNX0hVTkdfVEFTS19QQU5JQykgW04veS8/XSAoTkVXKQo+IAo+IENhbiBzb21lb25lIHBsZWFz
ZSB1cGRhdGUgdGhlIHZhbHVlcyBmb3IgdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTUuND8K
PiAKPiBUaGFua3MsCj4gCj4gLVBoaWxpcAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiAKCkknbSBub3QgZ2V0dGluZyB0aG9z
ZSBpbiBhIGNsZWFuIHJlYnVpbGQuIERpZCB5b3UgdHJ5IGEgIm1ha2UgZGlyY2xlYW4iPwoKLUFs
YmVydG8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
