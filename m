Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F27719AB73
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 14:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AoqWir1sJqLI+rZPZ8uohFWIfqzLtqMSQcJ99e4MzQ0=; b=uVJkHX7wzVdOKh9UZK/aPrwTZ
	5Q+gB7JnSn8nb530vpDnhc/Ye5D4/3/u/Z1dLIwmdwrN5G3OjMARMX8Yy/i0X9cqw05WA/IenvfaQ
	xSGZ0N8rH6D5fTIQxaKYQxHmE5qfznZJm3hS/Kk25Rd/BJm1Xdo+bhyWrv2dc4kiFPH/mVbHeIDK1
	CLdsFjequiSYTK/qBq/mjXHs1phQ1CleF12CGmhZCifPy4d7RaabS8TULr6sCVjjf3d0NoCim3tfY
	hQQIC13ab2OqmSOliUlOTkUvfXhiiLZhqOiFsev2+LyjKXp5Gq6Itm/f3wWXfMaVGvaiXIQB227xa
	dzJ9yoG6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcHc-0004EY-BU; Wed, 01 Apr 2020 12:15:48 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcHV-0004Ck-4i
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 12:15:42 +0000
Received: by mail-lj1-x243.google.com with SMTP id r7so17791982ljg.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Apr 2020 05:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yohU5ypg+XAW07ZcGPHVfMVLgpH5GEwt0srQMoXgOmQ=;
 b=FO5zgdpfaUtzYcttXxWOQg0IP7e6Nc4frnmxLick2yn47vV+zKiv9L+4EwiFbfL4Dc
 Y1RIb0M5wRiMDZBX48LaaNkNFFoGl/KwUjxBzNpL5xKNKlAae1orsLj5ut6iyU98fwiO
 RajkYG7Cz2g3kIaKbZiHppD24DvHz4Q2nmanXdANTFMgMP4V8spkBbHVfl3aZInHBfqd
 9MvJ0Q1yL/SD/odXRg+ZW2xeOUwpFJnPVhyx6e5HgdQv1MNn39ZnxE83ccCIAsuweVpG
 b93LDPOWJUDgHf6A1zMvXT8u/Rc/RbzRd4QpeUnTd+SCK0jjxyDKoeou3KMhdTGghu/n
 cwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yohU5ypg+XAW07ZcGPHVfMVLgpH5GEwt0srQMoXgOmQ=;
 b=i7Q6wIn0sdhCDRQJ8cMb2q1WrtPOAdD91LPx6aBWD+2DdfUsq7+J+xbgmEtIdfg3Hi
 be/wo33kjIk3rk+P9eGLkNDNybgFQ/bZbAdJJ3p8iOfU/7L1UERyl3hSpNdgjFiru8YR
 auFTBcrZpEpW3oSREnc6jUxGabEPcWtN/mEThAP35wrk7BYpFmaAaRqrBm2h8VlK/aOi
 fZ7RBMIVyZsf5FQ4ikqNOaNrTKer6bviM3j5k1LSTb4jIya0xRs/6fckhGPUbSTa1L/D
 5eikZ3jUJnKENuRFedNeeicxTEFdhBkE6/UqZT9N7pJJFY44Itq84Hd4LtouvglWcBy8
 BYfQ==
X-Gm-Message-State: AGi0PuaBLrFYReEx+oy12xFB7WGeBe2Lgt/V5smgmJ3x7ov1cpkHzfea
 HxFtpMTFHpZuKxM3UfYg3sI=
X-Google-Smtp-Source: APiQypJzh/uNGHDvJ9IqlYvn/vZ3GmEhh1zwMdyej4pWh1MdHOqOT1Eh3NoMHbZEjQa/6voTHfyYJw==
X-Received: by 2002:a2e:989a:: with SMTP id b26mr13009088ljj.274.1585743339318; 
 Wed, 01 Apr 2020 05:15:39 -0700 (PDT)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id d19sm1085726lji.95.2020.04.01.05.15.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Apr 2020 05:15:37 -0700 (PDT)
To: Tomasz Maciej Nowak <tmn505@gmail.com>, Paul Spooren <mail@aparcar.org>,
 openwrt-devel@lists.openwrt.org
References: <20200331232009.1948083-1-mail@aparcar.org>
 <427c8bc6-3313-e334-f346-73d6dcfe04c5@gmail.com>
 <909b15c0-b36f-db64-8aaf-f12afe539a61@gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <fb5cb860-aee7-a61e-d2ff-6f122f9100b8@gmail.com>
Date: Wed, 1 Apr 2020 14:15:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <909b15c0-b36f-db64-8aaf-f12afe539a61@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_051541_189892_977B5F89 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu/cortexa9: use Linksys codename as
 PROFILE
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgVG9tYXN6LCBQYXVsLAoKT24gMDEuMDQuMjAyMCAxNDowMywgVG9tYXN6IE1hY2llaiBOb3dh
ayB3cm90ZToKPiBXIGRuaXUgMDEuMDQuMjAyMCBvwqAwODo1NSwgUGlvdHIgRHltYWN6IHBpc3pl
Ogo+PiBIaSBQYXVsLAo+PiAKPj4gT24gMDEuMDQuMjAyMCAwMToyMCwgUGF1bCBTcG9vcmVuIHdy
b3RlOgo+Pj4gVGhlIFBST0ZJTEUgbmFtZXMgb2YgbXZlYnUvY29ydGV4YTkvTGlua3N5cyBkZXZp
Y2VzIGFyZSBiYXNlZCBvbiB0aGUKPj4+IGNvbnN1bWVyIG5hbWVzIChsaWtlIGxpbmtzeXNfd3J0
MTIwMGFjKSBpbnN0ZWFkIG9mIHRoZSB2ZW5kb3IgY29kZW5hbWVzCj4+PiAobGlrZSBsaW5rc3lz
X2NhaW1hbikgd2hpY2ggYXJlIGhvd2V2ZXIgdXNlZCBpbiB0aGUgcmVzdCBvZiB0aGUgYnVpbGQK
Pj4+IHN5c3RlbSAocGxhdGhmb3JtLnNoLCBib290Y291bnQsIDAxX2xlZHMpLgo+Pj4KPj4+IEEg
cnVubmluZyBkZXZpY2UgaXMgbm90IGFibGUgdG8ga25vdyB0aGUgcHJvZmlsZSB1c2VkIGZvciBp
dHMgZmlybXdhcmUKPj4+IGNyZWF0aW9uIGFzIGAvdG1wL3N5c2luZm8vYm9hcmRfbmFtZWAgcG9p
bnRzIHRvIHRoZSBkZXZpY2UgdHJlZQo+Pj4gaWRlbnRpZmllciAoZXF1YWwgdG8gTGlua3N5cyBj
b2RlbmFtZSkgYW5kIGAvdG1wL3N5c2luZm8vbW9kZWxgIGlzIG5vdAo+Pj4gZGV0ZXJtaW5pc3Rp
Y2FsbHkgKmNvbnZlcnRpYmxlKiB0byB0aGUgUFJPRklMRSBuYW1lLgo+Pj4KPj4+IFRoZSBpbnRy
b2R1Y3Rpb24gb2YgQUxUIHRpdGxlcyAoNGVlM2NmMmI1YSkgYWxsb3dzIHRvIHN0b3JlIGNvbnN1
bWVyCj4+PiBuYW1lcyBhbmQgbWFrZSB0aGVtIGF2YWlsYWJsZSBpbiB0aGUgYG1lbnVjb25maWdg
IHNvIHRoZSBwcm9maWxlIG5hbWUgaXMKPj4+IHRyYW5zcGFyZW50IHRvIHJlZ3VsYXIgdXNlcnMu
Cj4+Pgo+Pj4gVGhpcyBwYXRjaCBjaGFuZ2VzIHRoZSBtdmVidS9jb3J0ZXhhOS9MaW5rc3lzIFBS
T0ZJTEVTIHRvIHVzZSB0aGUgZGV2aWNlCj4+PiB0cmVlIGlkZW50aWZpZXIgYWthIExpbmtzeXMg
Y29kZW5hbWUgYXMgUFJPRklMRSBuYW1lIGFuZCB1c2VzIHRoZQo+Pj4gY29uc3VtZXIgbmFtZSBh
cyBBTFQgdGl0bGUuCj4+IAo+PiBXaGF0IGFib3V0IGZpcm13YXJlIGZpbGVuYW1lcz8gV291bGRu
J3QgdGhpcyBjaGFuZ2UgY29uZnVzZSBwZW9wbGUgc2VhcmNoaW5nIGZvciBmaXJtd2FyZSBmaWxl
cyBieSBkZXZpY2UgbW9kZWwgbmFtZT8KPj4gCj4+IFlvdXIgY2hhbmdlIHN3aXRjaCB0aGlzIGZy
b20gJ21hbnVmYWN0dXJlcl9tb2RlbCcgYXBwcm9hY2ggdG8gJ21hbnVmYWN0dXJlcl9tYW51ZmFj
dHVyZXItY29kZW5hbWUnLiBEb2VzIExpbmtzeXMgZXZlciBtZW50aW9uIHRoYXQgY29kZW5hbWVz
IG9uIHRoZWlyIHdlYnNpdGUsIGluIG1hcmtldGluZyBtYXRlcmlhbHMsIGV0Yy4/Cj4+IAo+IAo+
ICsxLCBub3QgZXZlbiBvbiB0aGUgZGV2aWNlIGl0c2VsZiB0aGVyZSdzIG1lbnRpb24gYWJvdXQg
dGhlc2UgY29kZSBuYW1lcywKPiBhbmQgdGhhdCdzIHdoeSBmcm9tIG1lIHRoYXQncyBhIE5BSy4K
CkhvdyBhYm91dCBwYXRjaGluZyBkZXZpY2UncyBEVFNlcyBhbmQgaW5jbHVkZSAnbWFudWZhY3R1
cmVyLG1vZGVsJyB0aGVyZSAKaW5zdGVhZCAoaW4gZnJvbnQgb2YgdGhlIGV4aXN0aW5nIG9uZXMp
PyBTY3JpcHRzIGluICdiYXNpYy1maWxlcycgd291bGQgCmFsc28gbmVlZCB0byBiZSBmaXhlZCBi
dXQgdGhpcyB3YXkgd2Ugc2F2ZSB0aGlzIChpbiBteSBvcGluaW9uKSBtaXN1c2UgCm9mICdERVZJ
Q0VfQUxUKicuCgpJJ20gYWxzbyBub3Qgc3VyZSBob3cgbWFueSBkZXZpY2VzIGFyZSBhZmZlY3Rl
ZCBoZXJlLCBvbmx5IExpbmtzeXM/CgotLSAKQ2hlZXJzLApQaW90cgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
