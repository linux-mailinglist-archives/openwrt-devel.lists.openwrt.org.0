Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8A81C4CC0
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 05:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Iihk7NSWLhsddcPpQtIQlGJiAFTYK3D1CXzK1WfrCD0=; b=B8uqMMPvNuM+zVIRNTk5Kkb0j
	PXfTGAqBS8meEJWrJd2H06uGb3KymLu4o8cGEWylJ9UTyZGNFAD74m754oMEc/o+F5PJZV5LDSqqv
	piuGbGxnkRnYhOgshVVQ/dYq4rdwagxX5ZmgYPt3nCsFKSrsPO80ydZVZgsDC8QdaABjtr5SEpQlK
	kF3d4U1wWkgIVEy+nVRVB9zRmEf981cnt/sa/4SL7j3l/j90/9Ihlbv95fnYx2bxusw3zpfBebsJW
	zemi+4zMDG0vA6QR94Xjk0E2q1GwIeL8F4BpSR2vT1PYgg8kxQEqF1aKmOAz5miOXe7WOsrVWYAwv
	DI34HYM8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVodu-0005hx-VH; Tue, 05 May 2020 03:53:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVodj-0005gC-JC
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 03:53:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id j5so173693wrq.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 20:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=UK4ZGg0rB2Uvygr72ww6VuR2KWEFSiZf/tvtBnfVWvs=;
 b=prBDb7aIc6oVtweiF9e+T4RxJsO9akAjj+SdYfe9zk6tWc+S4+o2OUVkhoLyIyONQc
 HwrmpqdmUiG/egNklp9LigxDiWR3oaEznX1i+P0P4X6RQlq74K1fSZyhyZs9D+Yamnfb
 2zOsE7EBPxaIeiiLrooAwZB+RkIuJwUDweu7efA9J77ogYfBQYsJt3zGeR0thvSLjhIk
 hpO5Hp1GPcCG7Dn1IWM4qV02hhZFONCU5S94bhSoI4XwtqDOCDokjTexzmsjbMkelt8M
 IV8m6zKMmmgEL/iBj/K/8A9xu9n2YRWtozotzDeZnF1h8L2ekiUtzKGK1CovwWMUsTpl
 FUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UK4ZGg0rB2Uvygr72ww6VuR2KWEFSiZf/tvtBnfVWvs=;
 b=tBlsG2ye8L0YIyH6CVT7fRfQ4k+zTXsIDs7FpKpxyNp9iycoex6yQpVIsqKmoAuq0W
 az1KuVFcYcQ+BxZHy2XTixa8DYNP3JopvXLuNaSImoEmxJaO9Xi+iqeIx0YJmOumBAey
 X84vOSMpjSbBkx2dS2YqPe6Si4fY/wOgxsMx3sxRWBM1ApHY5KliR2G007E+pxd/891S
 ZuS2pWNsDy4XRsztSOEuDPGtO4sye9AQaazulqRlCmaL91etDfqS16bvB80xZ57W+2QX
 fuOSOLjl4oepv8ipHnSaRgkcqlgjoWnjc5sKc2Pgfus0nBgsBMTdD4m8bXwXznPqvseJ
 v+4Q==
X-Gm-Message-State: AGi0PuZvJw/Sy6oWHJ2prZA7dTRiNjj+Z1YgBIhojJ198Qxymr62DDH5
 GYPW0tJiRQ2WFeh757wETVlLGWX7
X-Google-Smtp-Source: APiQypJNQLdOAbiNO39m65/mHrtnBIw8NCt7O5HRdWVToNNYHLfge+TRo8t79rsJQGUIc+QY4vhsEg==
X-Received: by 2002:a5d:4905:: with SMTP id x5mr1377588wrq.158.1588650777006; 
 Mon, 04 May 2020 20:52:57 -0700 (PDT)
Received: from [192.168.1.230] ([151.44.17.23])
 by smtp.gmail.com with ESMTPSA id h137sm4017003wme.0.2020.05.04.20.52.56
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 20:52:56 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
 <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
 <CABH8e0+q18=D-7aWhywJ-R_vGaMPGGHZYFaR6mgGa1v9x-nnSA@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <3fda84ef-1e02-5ba4-7605-b5a501f90343@gmail.com>
Date: Tue, 5 May 2020 05:52:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CABH8e0+q18=D-7aWhywJ-R_vGaMPGGHZYFaR6mgGa1v9x-nnSA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_205306_085820_7B511DC6 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: Re: [OpenWrt-Devel] FULL CONE NAT in OpenWrt
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

SnVzdCBhbGxvd2luZyBpbmJvdW5kIGNvbm5lY3Rpb25zIGZyb20gYW55IGV4dGVybmFsIGhvc3Qg
b24gd2VsbC1rbm93biAKcG9ydCByYW5nZXMgKGxpa2UgYSBnYW1lKSBpcyBiYWQgYW5kIHNob3Vs
ZCBOT1QgYmUgZGVmYXVsdC4KCkl0J3MgYmFzaWNhbGx5IGEgRE1aIG9yIGZ1bGwgcmFuZ2UgcG9y
dCBmb3J3YXJkaW5nIGZvciBhbGwgZGV2aWNlcyBpbiAKdGhlIExBTi4KCkp1c3Qgc2V0IGEgRE1a
IG9yIGZ1bGwtcmFuZ2UgcG9ydCBmb3J3YXJkaW5nIGZvciB5b3VyIGNvbnNvbGUocyksIGl0J3Mg
CnN0aWxsIHVuc2FmZSwgYnV0IGF0IGxlYXN0IGl0J3MganVzdCBmb3IgdGhlIGNvbnNvbGUgYW5k
IG5vdCBldmVyeXRoaW5nIAplbHNlIGluIHRoZSBMQU4gdG9vLgoKLUFsYmVydG8KCk9uIDA1LzA1
LzIwIDA0OjM1LCBHcmFjaWFzIEFtaWdvdSB3cm90ZToKPiAqUmVhZCB0aGlzOioKPiAq4oCiICpH
YW1pbmcgd2l0aCBGdWxsIENvbmUgdnMgU3ltbWV0cmljIE5BVCBSb3V0ZXJzIAo+IDxodHRwOi8v
YmFkbW9kZW1zLmNvbS9Gb3J1bS92aWV3dG9waWMucGhwP2Y9NiZ0PTIxPgo+IAo+IEl0IGlzIGEg
ZmVhdHVyZSB0aGF0IGlzIG5lY2Vzc2FyeSBhbmQgc2hvdWxkIGJlIGJ5IGRlZmF1bHQgaW4gT3Bl
bldydC4KPiAKPiBJIGhvcGUgeW91IHdpbGwgYWRkIGl0IGluIHRoZSBuZXh0IHJlbGVhc2VzIG9y
IGF0IGxlYXN0IHRoZSBwYWNrYWdlLgo+IAo+IFRoYW5rIHlvdS4KPiAKPiBFbCBsdW4uLCA0IG1h
eS4gMjAyMCBhIGxhcyAxNDo1MiwgSm9lbCBXaXLEgW11IFBhdWxpbmcgCj4gKDxqb2VsQGFlbmVy
dGlhLm5ldCA8bWFpbHRvOmpvZWxAYWVuZXJ0aWEubmV0Pj4pIGVzY3JpYmnDszoKPiAKPiAgICAg
SSBhbSBhbGwgZm9yIGV4cG9zaW5nIENvbmUgTmF0IGluIFVDSSAvIEZpcmV3YWxsIHpvbmVzIGFz
IGFuIG9wdGlvbgo+ICAgICB0byB0aGUgbWFzcXVlcmFkaW5nIGNvbmZpZ3VyYXRpb24gaW4gYSB6
b25lLgo+IAo+ICAgICBBbHNvIGFzIG11Y2ggYXMgSSBoYXRlIGl0IG5hdDY2IGZvciBJUHY2IG5l
ZWRzIHRvIGJlIGV4cG9zZWQgaW4gdGhlCj4gICAgIHNhbWUgcGxhY2UgLSBzcGVjaWZpY2FsbHkg
Zm9yIG1hcHBpbmcgcm91dGFibGUgUEQgd2hpY2ggY2hhbmdlIG9mdGVuCj4gICAgIHRvIFVMQSdz
Lgo+IAo+ICAgICAtSm9lbAo+IAo+ICAgICBPbiBUdWUsIDUgTWF5IDIwMjAgYXQgMDc6MjUsIEdy
YWNpYXMgQW1pZ291IDxwdWNoYXBhcGEwMUBnbWFpbC5jb20KPiAgICAgPG1haWx0bzpwdWNoYXBh
cGEwMUBnbWFpbC5jb20+PiB3cm90ZToKPiAKPiAgICAgICAgIFBsZWFzZSBhZGQgdGhpcyBwYWNr
YWdlIGFzIG9mZmljaWFsOgo+IAo+ICAgICAgICAgKlBvc3RzOioKPiAKPiAgICAgICAgICAxLiB4
dF9GVUxMQ09ORU5BVCAtLSBJbXBsZW1lbnRpbmcgUkZDIDM0ODkgZnVsbCBjb25lIFNOQVQgaW4K
PiAgICAgICAgICAgICBPcGVuV3J0Cj4gICAgICAgICAgICAgPGh0dHBzOi8vZm9ydW0ub3Blbndy
dC5vcmcvdC94dC1mdWxsY29uZW5hdC1pbXBsZW1lbnRpbmctcmZjLTM0ODktZnVsbC1jb25lLXNu
YXQtaW4tb3BlbndydC8xNDgxNj4KPiAgICAgICAgICAyLiBbMTIvOOabtOaWsF1PcGVuV3J0IOS4
iuWunueOsCBOQVQxIChGdWxsIGNvbmUgTkFUKSDnmoTmlrnms5XvvIzml6DpnIAKPiAgICAgICAg
ICAgICBETVovVVBuUCAtIE9QRU5XUlTkuJPniYgKPiAgICAgICAgICAgICA8aHR0cHM6Ly93d3cu
cmlnaHQuY29tLmNuL2ZvcnVtL3RocmVhZC0zMTk4MjctMS0xLmh0bWw+Cj4gICAgICAgICAgMy4g
5LuORE5BVOWIsG5ldGZpbHRlcuWGheaguOWtkOezu+e7n++8jOa1heiwiExpbnV455qERnVsbCBD
b25lIE5BVOWunueOsCB8Cj4gICAgICAgICAgICAgQ2hpb25MYWIKPiAgICAgICAgICAgICA8aHR0
cHM6Ly9ibG9nLmNoaW9ubGFiLm1vZS8yMDE4LzAyLzA5L2Z1bGwtY29uZS1uYXQtd2l0aC1saW51
eC8+Cj4gCj4gICAgICAgICAqCj4gICAgICAgICAqCj4gICAgICAgICAqR2l0OioKPiAgICAgICAg
IOKAoiBHaXRIdWIgLSBMR0ExMTUwL29wZW53cnQtZnVsbGNvbmVuYXQ6IE5ldGZpbHRlciBhbmQg
aXB0YWJsZXMKPiAgICAgICAgIGV4dGVuc2lvbiBmb3IgZnVsbCBjb25lIE5BVCBwb3J0ZWQgdG8g
T3BlbldydC4KPiAgICAgICAgIDxodHRwczovL2dpdGh1Yi5jb20vTEdBMTE1MC9vcGVud3J0LWZ1
bGxjb25lbmF0Pgo+ICAgICAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiAgICAgICAgIG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gICAgICAg
ICBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gICAgICAgICA8bWFpbHRvOm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+Cj4gICAgICAgICBodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
