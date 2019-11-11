Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09710F7B64
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 19:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a9LDGelnXiG/yGc5Yghoy/C1zLoivkc1DdkMpJsOjUU=; b=JNtsvdkChJK7b1H7dxvI+VxP+
	i03ilheel9OFV1TC8CpthsBhxJYU53iioD69LwGWmS42Lad3x79VaiFg4ZLvbRdOr43PTp+5MwjBn
	RlNwAdT0OFpJ5qkrSjgVFs/FoSBvU1cYlZsAbpGM/6pjoecJM7xDlhlwVoUOPny0EmCFV/pjKyuVz
	gvL/nuIv9g9cV+jukJEFxskGEva/sZ1t6nl8VS1u4s0QT/VPvTfmpWyjGHP54avjuV5aVdHyvl9xC
	8u0+Rbz0wSHowbLZYPH+FWb25gv8NtRsTEfybQvsbj5GDDv1ijkbGV4AP3a0Zju/WA/xl9UYsUBst
	jiX3Xu59Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEXl-0002Gy-5E; Mon, 11 Nov 2019 18:36:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEXc-0002Fq-BE
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 18:35:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id d22so3387346lji.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 10:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ktkcbeJp4j5OH+SCNJHJzmqK6MfwY9savrOiTW+z8wg=;
 b=akUGQ9dwTEGa7NhbFCF/bhZkPgmHatWASWrmJlfSeC3v9krpw31iixW9TFVYLbTsdD
 SEhNqeMTqqnF5tsW0Qd+5A+8DspEcuDH1Ju6C5I0EbdQ4AkRQH448mLsTAtvglvXdsEo
 2fSGW7KZg7iXWr0G6LEjn1PG5G/U4wS7VqlBzZ75SI1FMLPGK5/p5uUmt6Lkbj6vX9Ho
 iVHZgrIvnYH0rT87CvtFGPT27n9y03Pi3qpLpdrhD9azgnApnQFfrmKqqim+Css0uL9C
 BqUFlNXcubL4VL6Oo0fs+IvMqjK6eul5i/M3M2yczq2J5sKMVyT5iZ+OBx+41ywh2mAZ
 bf6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ktkcbeJp4j5OH+SCNJHJzmqK6MfwY9savrOiTW+z8wg=;
 b=TpvTSYe63oAwouIdI0CoHPmeFrVEABFlnEqWErzliM8eEG3zegV0DqheNGqC/4FIeX
 NeAHOqR1lVVHbUr2qdsdNXyZyoTOXbxa7rIRumf9rw3qitpbnjRT+eTHkSDK+9LRjo68
 CDVe7vJBaJ+onoLvyJaPbRS3CMEY4m3SV5YIMv3umB6W5vBqle8z8w/V8OS/odzUFOdW
 JIIaQSjmmByNy35ry4nR+M6rgztVOQaedwoIpK1OF8iPCmzVH5VLcCEFlDJMCNQ3Nlmg
 ktSCktLky+cupAjPgx5tCpMr8ZTzXxAgjc+pMcf3+ar+c/9lqpF1brQILakztQpwqcUh
 pAHw==
X-Gm-Message-State: APjAAAVjMzzOW4e3DjU8b+OT2cr27AQyoCvyt9onrsMVTh+zsyC7Mj2L
 TBTELfajhDN+z9vv64z0+XLRd7DP
X-Google-Smtp-Source: APXvYqzxWCKfj1ogZ8BDP2pF4chw/DAmo0xgyBb8Js/We6qijXFdNkCBBCkORt9MkT5Fhz/vrCK4Ug==
X-Received: by 2002:a2e:994f:: with SMTP id r15mr17458728ljj.18.1573497353831; 
 Mon, 11 Nov 2019 10:35:53 -0800 (PST)
Received: from [192.168.55.98] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id p193sm11803564lfa.18.2019.11.11.10.35.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 10:35:53 -0800 (PST)
To: Ivan Baktsheev <dot.and.thing@gmail.com>, openwrt-devel@lists.openwrt.org
References: <9146E54F-C4CD-4E4E-AFA0-180B36AFDE59@gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <2b531a3c-60a9-78ce-508b-1069adbe1fcd@gmail.com>
Date: Mon, 11 Nov 2019 19:35:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9146E54F-C4CD-4E4E-AFA0-180B36AFDE59@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_103556_411126_09CCEFBE 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] wlan factory defaults
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

SGkgSXZhbiwKCk9uIDExLjExLjIwMTkgMTk6MDksIEl2YW4gQmFrdHNoZWV2IHdyb3RlOgo+IEhp
LAo+IAo+IEkgd2FudCB0byBhZGQgbmV3IGRldmljZSwgYnV0IGFzIG9mIG5vdyBJIGNhbiB1cGxv
YWQgZmlybXdhcmUgd2lyZWxlc3NseSBhbmQgdGhlbiBJIG5lZWQgdG8gY29ubmVjdCB1c2luZyB3
aXJlZCBjb25uZWN0aW9uLCBiZWNhdXNlIGluIHN0b2NrIE9wZW5XcnQgaW1hZ2Ugd2lyZWxlc3Mg
aXMgZGlzYWJsZWQuCj4gCj4gRm9yIG15IHJvdXRlciAoYW5kIHByb2JhYmx5IG1hbnkgb3RoZXJz
KSBkZWZhdWx0IFdpRmkgU1NJRCBzdG9yZWQgaW4gZmFjdG9yeSBwYXJ0aXRpb24gYW5kIGl04oCZ
cyBxdWl0ZSBlYXN5IHRvIGV4dHJhY3QuIFVuZm9ydHVuYXRlbHksIHdpcmVsZXNzIHNldHVwIHRh
a2VzIHBsYWNlIGluIGRpZmZlcmVudCB0aW1lIHRoYW4gd2lyZWQvZ3Bpby9sZWRzIHNldHVwIGZy
b20gL2V0Yy9ib2FyZC5kIGFuZCBkZWZhdWx0cyBhcmUgaGFyZGNvZGVkIGluIC9saWIvd2lmaS9t
YWM4MDIxMS5zaAo+IAo+IEN1cnJlbnRseSwgSSBoYXZlIC9ldGMvYm9hcmQuZC8wNF9mYWN0b3J5
X2RlZmF1bHRzLCB3aGljaCBleHRyYWN0cyBmYWN0b3J5IGRlZmF1bHRzIGZvciByb290IHBhc3N3
b3JkIGFuZCBXaUZpLiBXaUZpIHNldHRpbmdzIHdyaXR0ZW4gaW50byAvZXRjL2ZhY3RvcnlfODAy
MTEsIHdoaWNoIHRoZW4gcmVhZCBhdCAvbGliL3dpZmkvbWFjODAyMTEuc2gKPiAKPiBJIHdvdWxk
IGxpa2UgdG8gaW50ZWdyYXRlIHRoaXMgaW50byBPcGVuV3J0LCBwbGVhc2UgdGFrZSBhIGxvb2sg
YXQgZnVsbCBleGFtcGxlIGF0IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL2FwbGEvYTgxY2FkMGEx
ZGM5ZmVkZmVmZjE5OTQxMTE2ZGEzNjkgYW5kIHNoYXJlIHlvdXIgdGhvdWdodHMuIERpZmYgZm9y
IC9saWIvd2lmaS9tYWM4MDIxMS5zaDoKCklNSE8sIHRoYXQgd291bGQgYmUganVzdCB0b28gbXVj
aCBibG9hdC4gT3BlbldydCBpcyBhIGdlbmVyaWMgcGxhdGZvcm0gCihvciBhIGRpc3RyaWJ1dGlv
biksIHRodXMgX3BlcnNvbmFsbHlfIEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIHN1cHBvcnQgCmFs
bCB0aGUgZGlmZmVyZW50IHdheXMgdmVuZG9ycyB1c2UgdG8ga2VlcCB0aGVpciBzb2Z0d2FyZSBz
ZXR0aW5ncy4gCk90aGVyd2lzZSwgd2UgZW5kIHVwIHdpdGggYnVuY2ggb2Ygc2NyaXB0cyBmZXRj
aGluZyBkYXRhIGZvciB2YXJpb3VzIApkZXZpY2VzIGFuZCB0aGF0IHdvdWxkbid0IGdldCBldmVy
IHVuaWZpZWQgYW5kIHByb2JhYmx5IGF0IHNvbWUgcG9pbnQsIAp1bm1haW50YWluYWJsZS4gV2hh
dCdzIG1vcmUsIHdlIGNhbid0IHRydXN0IHZhbHVlcyBzdG9yZWQgaW4gdmVuZG9yIApzZXR0aW5n
cyAtIGluIHdvcnNlIGNhc2UsIHdpdGhvdXQgc29waGlzdGljYXRlZCBkYXRhIHZlcmlmaWNhdGlv
biwgd2UgCm1pZ2h0IGVuZCB1cCB3aXRoIGJyb2tlbiB1Y2kgY29uZmlndXJhdGlvbi4KCi0tIApD
aGVlcnMsClBpb3RyCgo+IAo+IAo+IGRpZmYgLS1naXQgYS9wYWNrYWdlL2tlcm5lbC9tYWM4MDIx
MS9maWxlcy9saWIvd2lmaS9tYWM4MDIxMS5zaCBiL3BhY2thZ2Uva2VybmVsL21hYzgwMjExL2Zp
bGVzL2xpYi93aWZpL21hYzgwMjExLnNoCj4gaW5kZXggYmU5YzUzNy4uM2M4OGM4MSAxMDA2NDQK
PiAtLS0gYS9wYWNrYWdlL2tlcm5lbC9tYWM4MDIxMS9maWxlcy9saWIvd2lmaS9tYWM4MDIxMS5z
aAo+ICsrKyBiL3BhY2thZ2Uva2VybmVsL21hYzgwMjExL2ZpbGVzL2xpYi93aWZpL21hYzgwMjEx
LnNoCj4gQEAgLTEsMTAgKzEsMTIgQEAKPiAgICMhL2Jpbi9zaAo+ICAgLiAvbGliL25ldGlmZC9t
YWM4MDIxMS5zaAo+ICAgCj4gICBhcHBlbmQgRFJJVkVSUyAibWFjODAyMTEiCj4gICAKPiArLiAv
ZXRjL2ZhY3RvcnlfODAyMTEKPiArCj4gICBsb29rdXBfcGh5KCkgewo+ICAgCVsgLW4gIiRwaHki
IF0gJiYgewo+ICAgCQlbIC1kIC9zeXMvY2xhc3MvaWVlZTgwMjExLyRwaHkgXSAmJiByZXR1cm4K
PiAgIAl9Cj4gICAKPiBAQCAtOTUsMjUgKzk3LDQ5IEBAIGRldGVjdF9tYWM4MDIxMSgpIHsKPiAg
IAkJCWRldl9pZD0ic2V0IHdpcmVsZXNzLnJhZGlvJHtkZXZpZHh9LnBhdGg9JyRwYXRoJyIKPiAg
IAkJZWxzZQo+ICAgCQkJZGV2X2lkPSJzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH0ubWFjYWRk
cj0kKGNhdCAvc3lzL2NsYXNzL2llZWU4MDIxMS8ke2Rldn0vbWFjYWRkcmVzcykiCj4gICAJCWZp
Cj4gICAKPiArCQlldmFsIHJhZGlvX2lfZGlzYWJsZWQ9XCRyYWRpbyR7ZGV2aWR4fV9kaXNhYmxl
ZAo+ICsJCXJhZGlvX2lfZGlzYWJsZWQ9JHtyYWRpb19pX2Rpc2FibGVkOi0ke3JhZGlvX2Rpc2Fi
bGVkOi0xfX0KPiArCQlldmFsIHJhZGlvX2lfY291bnRyeT1cJHJhZGlvJHtkZXZpZHh9X2NvdW50
cnkKPiArCQlyYWRpb19pX2NvdW50cnk9JHtyYWRpb19pX2NvdW50cnk6LSRyYWRpb19jb3VudHJ5
fQo+ICsJCWlmIFsgISAteiAiJHJhZGlvX2lfY291bnRyeSIgXSA7IHRoZW4KPiArCQkJdWNpX3Jh
ZGlvX2NvdW50cnk9InNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fS5jb3VudHJ5PSR7cmFkaW9f
aV9jb3VudHJ5fSIKPiArCQllbHNlCj4gKwkJCXVjaV9yYWRpb19jb3VudHJ5PQo+ICsJCWZpCj4g
Kwo+ICsJCWV2YWwgd2xhbl9pX3NzaWQ9XCR3bGFuJHtkZXZpZHh9X3NzaWQKPiArCQl3bGFuX2lf
c3NpZD0ke3dsYW5faV9zc2lkOi0ke3dsYW5fc3NpZDotT3BlbldydH19Cj4gKwkJZXZhbCB3bGFu
X2lfZW5jcnlwdGlvbj1cJHdsYW4ke2RldmlkeH1fZW5jcnlwdGlvbgo+ICsJCXdsYW5faV9lbmNy
eXB0aW9uPSR7d2xhbl9pX2VuY3J5cHRpb246LSR7d2xhbl9lbmNyeXB0aW9uOi1ub25lfX0KPiAr
CQlldmFsIHdsYW5faV9rZXk9XCR3bGFuJHtkZXZpZHh9X2tleQo+ICsJCXdsYW5faV9rZXk9JHt3
bGFuX2lfa2V5Oi0kd2xhbl9rZXl9Cj4gKwkJaWYgWyAhIC16ICIkd2xhbl9pX2tleSIgXSA7IHRo
ZW4KPiArCQkJdWNpX3dsYW5fa2V5PSJzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRpbyR7ZGV2aWR4
fS5rZXk9JHt3bGFuX2lfa2V5fSIKPiArCQllbHNlCj4gKwkJCXVjaV93bGFuX2tleT0KPiArCQlm
aQo+ICsKPiAgIAkJdWNpIC1xIGJhdGNoIDw8LUVPRgo+ICAgCQkJc2V0IHdpcmVsZXNzLnJhZGlv
JHtkZXZpZHh9PXdpZmktZGV2aWNlCj4gICAJCQlzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH0u
dHlwZT1tYWM4MDIxMQo+ICAgCQkJc2V0IHdpcmVsZXNzLnJhZGlvJHtkZXZpZHh9LmNoYW5uZWw9
JHtjaGFubmVsfQo+ICAgCQkJc2V0IHdpcmVsZXNzLnJhZGlvJHtkZXZpZHh9Lmh3bW9kZT0xMSR7
bW9kZV9iYW5kfQo+ICAgCQkJJHtkZXZfaWR9Cj4gICAJCQkke2h0X2NhcGFifQo+IC0JCQlzZXQg
d2lyZWxlc3MucmFkaW8ke2RldmlkeH0uZGlzYWJsZWQ9MQo+ICsJCQlzZXQgd2lyZWxlc3MucmFk
aW8ke2RldmlkeH0uZGlzYWJsZWQ9JHtyYWRpb19pX2Rpc2FibGVkfQo+ICsJCQkke3VjaV9yYWRp
b19jb3VudHJ5fQo+ICAgCj4gICAJCQlzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRpbyR7ZGV2aWR4
fT13aWZpLWlmYWNlCj4gICAJCQlzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRpbyR7ZGV2aWR4fS5k
ZXZpY2U9cmFkaW8ke2RldmlkeH0KPiAgIAkJCXNldCB3aXJlbGVzcy5kZWZhdWx0X3JhZGlvJHtk
ZXZpZHh9Lm5ldHdvcms9bGFuCj4gICAJCQlzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRpbyR7ZGV2
aWR4fS5tb2RlPWFwCj4gLQkJCXNldCB3aXJlbGVzcy5kZWZhdWx0X3JhZGlvJHtkZXZpZHh9LnNz
aWQ9T3BlbldydAo+IC0JCQlzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRpbyR7ZGV2aWR4fS5lbmNy
eXB0aW9uPW5vbmUKPiArCQkJc2V0IHdpcmVsZXNzLmRlZmF1bHRfcmFkaW8ke2RldmlkeH0uc3Np
ZD0ke3dsYW5faV9zc2lkfQo+ICsJCQlzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRpbyR7ZGV2aWR4
fS5lbmNyeXB0aW9uPSR7d2xhbl9pX2VuY3J5cHRpb259Cj4gKwkJCSR7dWNpX3dsYW5fa2V5fQo+
ICAgRU9GCj4gICAJCXVjaSAtcSBjb21taXQgd2lyZWxlc3MKPiAgIAo+ICAgCQlkZXZpZHg9JCgo
JGRldmlkeCArIDEpKQo+ICAgCWRvbmUKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
