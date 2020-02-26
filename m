Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDAE17024B
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 16:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qT2Vp9Fuq+wawyugBSr27gqrNvnqQb5rqJllBvZ610=; b=HACv84YV7cOfYn
	t7zdwHIYsCQvitQD/igt5a3UE/RCLfTN37VFMSjYq4k6PltW0xVCFGz5yNurMaLLxTeBqW7HIYB+8
	L9BJMb+JBj+5ADn424N/Aqf4xkpjUeAPLJYRnY20AibU7yxA/3SdZICglY70ezPKircrU+KVLwbzs
	abR5sPuDfY0fBudtn08KTO6hYYRIA34aA36MRbt/OAW5Z50Ri71PWqYsPQhfPpoG0XGOTD0pVZGX+
	MYidDD+hzlB//byOKiyehf4yW4alU6YsvZaLSUR8ZaNV0+25QPxd+Yrhd9mIy7nt80h7IKccDvsZG
	WP+m6gmWXE7jDTnTbBhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6yYW-0000kL-Jl; Wed, 26 Feb 2020 15:25:00 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yYM-0000jb-Mi; Wed, 26 Feb 2020 15:24:54 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id dc14so1437604qvb.9;
 Wed, 26 Feb 2020 07:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=sVrw2s/DM7TB1Nl2cgQ6hUNIOuH5E53G9UKcU8AfkDc=;
 b=cVcWUC3HLC/UnGQ2n4KLb/ICWnickrgxlIjMVIrbK6QL0EWilQHM02ZROaUyE4TD48
 c5bJc+i1CuGAInJko4ZoIsXqUaqK5iM4g/za9DFFWo/P9FQnJUE1dmMVrM1FCVBnL0R+
 iqE0ghCiAYiNrkTHXy2X9HPpTceVnPZfR0G+4gKfEjSzFH7NwBpiTG1azdzfVU5vyzkD
 EaDJ9bOvqwlRun1nAZY7v0+JKtHLxD1W8gbpeakWGiTVYgmoPJQXUiKseVpgE0mBiVsZ
 eGZksUVZVtCw9lPJE3Ua8rIxFQxLlTxLdnzobXFHAJvDtmKYeqU6W9Bstp46627gzmVD
 zwGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=sVrw2s/DM7TB1Nl2cgQ6hUNIOuH5E53G9UKcU8AfkDc=;
 b=T0G1nkTNY5XEPNb96xVIoQ0My5p0yCBLUgXP8tabd1pH+JsSL7REuzb1CnsBHcBxim
 FUZokYO/y8v+bJD8VQPn/sKZuLiF8RK/YC1Uo/dBX8M99ki0Nn7HWyXGUGgNsqJtivQp
 zAU6+xi25smpwNwa3tHAagjyFw+GVknzUakLT+PNnn5JaCQl8ZpCW9fI1j0A4Wlkl+fu
 O1pdNArmVh5KWN7rw/tO/aXQcDzJ+kMZVicPAAbDUjTHJX20az6a0XQXOWMZK6PttGkS
 R5u7fyAtkvpQfKQsZ/4Hh7vlVR5StEaFH0FiJjXaLl76lo2M9CQI0oqSq+W00Pb4DmHj
 fxyg==
X-Gm-Message-State: APjAAAVbj9jk4zlyJA/JhqJJHvh9otf/tnpHNahRIwBIljkFeX8y5cbU
 meYXZmkFefg1ZLQYKAfZHXQ=
X-Google-Smtp-Source: APXvYqyxkSSFaclSzGBEs70ILz37IrkJd2n0MlDqOm9V6xP+v2DEbJeUCYlDq5hyhMyn8I+IFJ+l/A==
X-Received: by 2002:a05:6214:1494:: with SMTP id
 bn20mr5647986qvb.43.1582730689239; 
 Wed, 26 Feb 2020 07:24:49 -0800 (PST)
Received: from richs-mbp-10337.lan ([70.16.103.234])
 by smtp.gmail.com with ESMTPSA id v10sm1260057qtj.26.2020.02.26.07.24.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 07:24:48 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Rich Brown <richb.hanover@gmail.com>
In-Reply-To: <20200226133614.GJ99033@meh.true.cz>
Date: Wed, 26 Feb 2020 10:24:47 -0500
Message-Id: <F03638DF-B6C4-438F-9B4F-E1110111AD01@gmail.com>
References: <7e661795-63c8-2c62-f3ce-bde77adcdfe2@aparcar.org>
 <20200226133614.GJ99033@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_072450_765899_3378FD8F 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richb.hanover[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] RFC: versions.json
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
Cc: openwrt-devel@lists.openwrt.org, openwrt-adm@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cj4+IEEgZmlyc3Qgc3RlcCBjb3VsZCBiZSB0byBlc3RhYmxpc2ggYSAqdmVyc2lvbnMuanNvbiog
ZmlsZSBhdCB0aGUgcm9vdCBvZgo+PiBkb3dubG9hZHMub3BlbndydC5vcmchIFRoZSBmaWxlIHdv
dWxkIGFsbG93IHRvIGNoZWNrIGlmIGEgZGV2aWNlIHN0aWxsIHJ1bnMKPj4gdGhlIGxhdGVzdCBy
ZWxlYXNlLiBKU09OIHNlZW1zIGNvbW1vbiBlbm91Z2ggYW5kIGlzIHdlbGwgc3VwcG9ydGVkIGJ5
IEx1Q0lzCj4+IEphdmFTY3JpcHQgaW1wbGVtZW50YXRpb24gYW5kIGFsc28gdmlhIGpzaG4uc2gg
b24gYSBDTEkvc2NyaXB0IGxldmVsLgo+IAo+IEknbSB3b25kZXJpbmcgd2hldGhlciB0aGlzIEpT
T04gaXMgcmVhbGx5IG5lZWRlZCwgd291bGRuJ3QganVzdCBzb21lIGtpbmQgb2YKPiB1bmlmaWVk
IHN5bWxpbmsvZGlyZWN0b3J5IHN0cnVjdHVyZSB3b3VsZCB3b3JrIGFzIHdlbGw/IEkgbWVhbiwg
d2h5IHRvIGNhcmUKPiBhYm91dCBhbm90aGVyIEpTT04gZmlsZSBjb250ZW50IGlmIHRoZSBzYW1l
IGNvdWxkIGJlIGFjaGlldmVkIG90aGVyd2lzZS4KCkl0J3MgdHJ1ZSB0aGF0IHRoZSBhY3R1YWwg
cmVwcmVzZW50YXRpb24gKHN5bWxpbmsvZGlyZWN0b3J5IHN0cnVjdHVyZSwgSlNPTiBmaWxlLCBh
IG1hc3NpdmUgdGV4dCBmaWxlIGxpc3RpbmcgZXZlcnkgcmVsZWFzZSwgZXRjKSBkb2Vzbid0IG1h
dHRlci4gSW4gc29tZSB3YXksIHRoZXkncmUgYWxsICJjb252ZXJ0aWJsZSIgdG8gdGhlIG90aGVy
IGZvcm1zLiAKCkJ1dCB3ZSBhcmUgY3JlYXRpbmcgYW4gQVBJIGhlcmUuIFBlb3BsZSB3YW50IHRv
IHdyaXRlIHNvZnR3YXJlIGFnYWluc3QgdGhhdCBBUEksIGtub3dpbmcgdGhleSBuZXZlciB3aWxs
IGhhdmUgdG8gdHdlYWsgdGhlaXIgc29mdHdhcmUgYmVjYXVzZSBhIG5ldyB2ZXJzaW9uIG9yIGlt
cG9ydGFudCBicmFuY2gsIGV0YyBhcmlzZXMuCgpXaGF0IG1hdHRlcnMgaXMgdGhhdCBPcGVuV3J0
IHBpY2sgT05FIEZPUk1BVCB0byBiZSB0aGUgY2Fub25pY2FsIHJlcHJlc2VudGF0aW9uIG9mIHRo
aXMgaW5mb3JtYXRpb24sIGFuZCB0aGF0IG91ciBidWlsZCBzeXN0ZW0gYXV0b21hdGljYWxseSBj
cmVhdGUgZGF0YSBJTiBUSEFUIE9ORSBGT1JNQVQgYXMgYSBtYXR0ZXIgb2YgY291cnNlLCBzbyB0
aGF0IGV2ZXJ5b25lIGNhbiByZWx5IG9uIGl0IGZvciB0aGVpciBuZWVkcy4gCgo+IERvIHdlIG5l
ZWQgdG8gY2FyZSBhYm91dCBhcmNoaXZlIHJlbGVhc2VzPwoKT2xkZXIgdmVyc2lvbnMgb2YgdGhl
IGZpcm13YXJlIChwcmUtMjAueHgpIHdvbid0IGtub3cgaG93IHRvIGludGVycHJldCB0aGUgQVBJ
IGRhdGEsIHNvIHdlIGRvbid0IG5lZWQgdG8gY2F0ZXIgdG8gdGhvc2Ugb2xkZXIgaW1hZ2VzLiBI
b3dldmVyLCBpbiB0aGUgZnV0dXJlIHdoZW4gU3RhYmxlIGlzIDIzLjA3LjIsIGFuZCB5b3UgZW5j
b3VudGVyIGEgMjAuMDcuMSBtYWNoaW5lLCB5b3UnZCBsaWtlIHRvIGl0IHRvIHNob3cgeW91IHRo
ZSB1cGdyYWRlIG9wdGlvbnMgYmFzZWQgaW4gaXRzIGltYWdlLgoKRG8gdGhlIGNob2ljZXMgYmVs
b3cgY292ZXIgdGhlIHdhdGVyZnJvbnQgZm9yIGEgY29tcGxldGUgc2V0IG9mIHVzZWZ1bCBuYW1l
cz8gKExldCdzIGFzc3VtZSB0aGF0IDE5LjA3LjIgaGFzIGJlZW4gcmVsZWFzZWQsIGFuZCB0aGF0
IHRoZXJlIGFyZSB0d28gUkN4IGJ1aWxkczogMTkuMDcuMy1yYzEgYW5kIDIwLjA3LjAtcmMyLi4u
KQoKCj4gc25hcHNob3QgICAgICAgICAgLT4gc25hcHNob3QKPiByZWxlYXNlL2NhbmRpZGF0ZSAt
PiAyMC4wNy4wLXJjMgpyZWxlYXNlL2NhbmRpZGF0ZSAtPiAxOS4wNy4zLXJjMQo+IHJlbGVhc2Uv
Y3VycmVudCAgIC0+IDE5LjA3LjIKcmVsZWFzZS9wcmV2aW91cyAtPiAxOS4wNy4xCj4gcmVsZWFz
ZS9wcmV2aW91cyAgLT4gMTguMDYuNwpyZWxlYXNlL3ByZXZpb3VzIC0+IDE4LjA2LjYKLi4uCnJl
bGVhc2UvcHJldmlvdXMgLT4gMTguMDYuMApyZWxlYXNlL2VuZG9mbGlmZSAtPiAxNy4wMS42Ci4u
LgpyZWxlYXNlL2VuZG9mbGlmZSAtPiAxNy4wMS4wCnJlbGVhc2UvZW5kb2ZsaWZlIC0+IDE1LjA1
LgpyZWxlYXNlL2VuZG9mbGlmZSAtPiAxNC4wNwouLi4KcmVsZWFzZS9lbmRvZmxpZmUgLT4gMC45
IChhbGwgdGhlIHdheSBiYWNrIHRvIFdoaXRlIFJ1c3NpYW4uLi4pCgo+PiBVcGRhdGUgY2hlY2sg
c2NyaXB0IHNob3VsZCBsb29rIGZvciB0aGUgY2xvc2VzdCB2ZXJzaW9uIGZvdW5kIGluIHRoZSBz
YW1lCj4+IGNoYW5uZWwuIFNvIGEgKnN0YWJsZSogMTkuMTIuMyBkZXZpY2UgdXBkYXRlcyB0byAx
OS4xMi41IAo+IAo+IFdvdWxkbid0IGl0IGJlIHNhZmVyIHRvIHVwZ3JhZGUgZmlyc3QgdG8gMTku
MTIuND8gOi0pCgpUaGlzIGlzIGFuIGludGVyZXN0aW5nIGFuZCBpbXBvcnRhbnQgcXVlc3Rpb24s
IGJ1dCBpdCdzIG9ydGhvZ29uYWwgdG8gdGhlIHF1ZXN0aW9uIG9mIGFuIEFQSSB0aGF0IHJlcHJl
c2VudHMgdGhlIHZhcmlldHkgb2YgYnVpbGRzIHRoYXQgYXJlIGF2YWlsYWJsZS4KClRoYW5rcy4K
Ci0gUmljaAoKPj4gVGhpcyBjb3VsZCBhbHNvIGludHJvZHVjZSBjaGFubmVscyBsaWtlICJzdGFi
bGUiIChsYXRlc3QgcG9pbnQgcmVsZWFzZSksCj4+ICJ0ZXN0aW5nIiAocmNOKSBhbmQgInVuc3Rh
YmxlIiAoc25hcHNob3RzKS4gQXMgYSBkaWN0IGlzIHVzZWQgdGhlICp2ZXJzaW9ucyoKPj4gYXJy
YXkgY291bGQgYmUgZXh0ZW5kZWQgd2l0aG91dCBsb3NpbmcgY29tcGF0aWJpbGl0eS4KPiAKPiBE
w6lqw6AgdnVbMV0/IDotKSAKPiAKPiAxLiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBl
cm1haWwvb3BlbndydC1kZXZlbC8yMDE5LUF1Z3VzdC8wMTg2NDYuaHRtbAo+IAo+IC0tIHluZXp6
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBv
cGVud3J0LWFkbSBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWFkbUBsaXN0cy5vcGVud3J0Lm9yZwo+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1hZG0K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
