Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA9C1391C1
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 14:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdhUJ4e6BgEYj6MHLOqm1lLrlMuj1t3XmIjuHgr+HI0=; b=jzNzYAT42bkFsl
	OMFf19wfOvGa4yNAy5mccffEyIIcTAJzGFFB+gNyVG5RpZqquOg/K16Cf7dSP4wpWNhJTf4vnXLtJ
	OaVsuc91UJImBF7y+XvGIZGfwa4rqdEhdzy14LYWglF+NRy/LIrEvklbkNRTrObxTW+vYfDu6L4Fs
	XQ3RVxo2+KIlUp/ImQeIHaldNUt90QNabOpi/e0qIBcj90swCzbixKijW2YMvGawSfvRLD4teULI7
	j8/SCiaOQ0MEzNBZaBlLVrSTyYGm1d0S5iaFmFVEjYx51Ga+NMMeFZy2+GG1v+FPTQLgU8mfqw+kX
	55RmU4VLrw8/J2blp6xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzPk-00045y-8i; Mon, 13 Jan 2020 13:05:52 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzND-0000p9-Pe
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 13:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578920589;
 bh=uye6/uGzZQVGuVudKKuRGL/VnnHTz1+PaV8Pxsy5Njw=;
 h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date;
 b=PrSgSqjvqfOlyVrMbtMNZdwxIzB+TaCnyZRv8WIx4To2RoEiMyzQ9GXu1q4qeXlwK
 GeptZ2mQUQ/q//pH4UKaOiruS2MMU9Huk8aK7lDrRCv1IDkFZj1cfV1ebldyiynZxB
 PzzpECwlulyL5CuvChJ1oJelPN9FYjZqFPpS5iko=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([95.223.73.239]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M8hZJ-1imsm40kkr-004kkm; Mon, 13
 Jan 2020 14:03:09 +0100
From: "Thomas Endt" <tmo26@gmx.de>
To: "'Paul Spooren'" <mail@aparcar.org>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
In-Reply-To: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
Date: Mon, 13 Jan 2020 14:03:09 +0100
Message-ID: <002001d5ca11$ce0e0de0$6a2a29a0$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHwFKFlyfH99uJSkQj1itctKDZCZ6ez+GLw
Content-Language: de
X-Provags-ID: V03:K1:mps0FQyKEzsfJvlx9huW3lyZECsjfA2+EoFrx3pDLr/AdtTiHU8
 xkQpNvkMOTNANzRtKuOmjAdNxIcuUbA/1pj44jidVQH35G1HQGoSquIenk35LOTo4K/m8iv
 +p9w130lUWxtajXUzGoT7NLTOOycmmkChl4HRCfqxIq1WWUIBiZgLrKY4bm4Hi7Gpvmii3e
 FXv45+482uhiyI1vUiZKg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Vac4jmAGvIc=:CWwU3fCNTaisakzzjWnVwI
 GoNMEdVzI9Oy3wOafOVVnVIEMv41K3Z9Lnt1N29mIjVNOCE2gHXr9l3NYia9MMBCj8FBUxv3y
 9JU9cerIllNpT++/vJyg4v8CLiIQ7x7DV3S2Mr11PpFREHsy23kzXuVaiMky27yeWHSg/evud
 qKGQNwiKy/maDu/dOCZAHWQ+plGVcH4jagK1nS/yugD5MF6aVOKo/Cjc0k7KJSD555sLm7xvw
 pM/18V2YJBzqib6gqzY2Tqd+gRMX6O0VM9gRD5JFH6Kbdys0Bpqk5Lc5REmp6c0qNmvUh+uxe
 6Z8ap8uLUPEbbqMWHwQu/x4412C1c27rlJKNSbYsXpu7mdYnuAUErCTkxU/YX8I4Z6DSZYUA1
 jfYFjd/YWjXDqfaZARUFDHmrGSSIy8WWxr/OHEgwiMr0Ttg8+NJRboAZlTASzqmKn4CmMNDKE
 jDs9F7NE6wrwf4BF+Wm0/YgGnJx/MMRioD5QGzkrnJnuNGmjW9JXqO60XNJwJJsYQKX7rwhl8
 R/y/3Yv7lc8EtPtv5PxG4B9XsPw9FsLHQpJOMckqu4PasKQAdI9//5Dhe3hDj/lvfTjdLOEff
 rsc0bplrg83mXRzd4jHbgQ16chQpeIXuLtsEnxvHlTQPpKt1u30Oqs2vgSZ72Xvn4hmILqJgh
 ZgeeFzfdZOUVksqDzXlFUIsLRjQVtcpf2YOO8cvQqiLzxsGw87jNaxr3qZgqKGjwd9yykaHPg
 ZlhPTzpAQXZIzszQK7oklBQj4vLMnoG8l0T4j5oKOhgyK4jYwx0U5ZzXPS5sUgupwVp0uEC1F
 NOnl6bji3JRseLbAx4AOfmseNd9/EIHEPCxdES4y5vkaOCWp6zzKIlMOjjIFq/iVypFJEHKc3
 AQsf8onyHaMGzHBGCWJhERwnHY+tsApEhMI+kZu1C4rl9UDGslZkzp6o8x+gdsf7znuQ9pDGK
 Cpqrm1to/5Zm8WnVbFnHDKrZuCSCEnHyryd4Ldre47PzieTEq9TkfSJ9vAp73yrwtHfCRX+Ks
 phOkp6thJPSW4ROBQeRFO5N1A7MajnGv09YiRGS4GEgAWkx/a8ttDE+LazkwjhERxTSzVJQi5
 2lxYAfQE1Zf2TgXt7iGUr6cqAr9T0QgwWfyFHmZ60F1kJkQ04zcHLQMhapwVPefYypEAXJo1C
 nee7Wnkx1t+sO+7HZWh6h8mSXoPLV6rw6OMaPg71Tdo/FYsvEf1zv/l0kFRLBMMXrVLJqXmfs
 l0XFUoU9eiCXUpbdA8W8bnk8ZnvbIQiXE1V6JZw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_050316_265122_E8B034D4 
X-CRM114-Status: UNSURE (   4.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmo26[at]gmx.de)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmo26[at]gmx.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gVm9uOiBvcGVud3J0LWRldmVs
IDxvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmc+IEltCj4gQXVmdHJhZyB2
b24gUGF1bCBTcG9vcmVuCj4gR2VzZW5kZXQ6IFNvbm50YWcsIDEyLiBKYW51YXIgMjAyMCAyMjo0
Nwo+IEFuOiAnT3BlbldydCBEZXZlbG9wbWVudCBMaXN0JyA8b3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZz4KPiBCZXRyZWZmOiBbT3BlbldydC1EZXZlbF0gW1JGQ10gY29tbWl0IG1lc3Nh
Z2UgaW4gWUFNTCBmb3JtYXQgZm9yIG5ldwo+IGRldmljZXMKPiBBbiBpbGx1c3RyYXRpdmUgY29t
bWl0IHRoZXJlZm9yZToKPiAKPiBzb2M6IFF1YWxjb21tIElQUTQwMjkKPiByYW1fbWI6IDUxMgo+
IGZsYXNoOgoKSWYgdGhlcmUgaXMgbWFudWFsIHVzZXIgaW5wdXQsIHlvdSBuZWVkIHRvIHZhbGlk
YXRlIGFuZCBub3JtYWxpemUgdGhlIGlucHV0IGRhdGEuCgpFeGFtcGxlOgoKLSBzb2M6IFF1YWxj
b21tIElQUTQwMjkKLSBzb2M6IElQUTQwMjkKLSBzb2M6IHFVYUxjT21NbSBJUFE0MDI5CgpXZSB3
YW50IHVuaWZvcm0gbmFtaW5nIGFuZCBzcGVsbGluZy4KCklmIGFsbCB0aGlzIGlzIGNyZWF0ZWQg
dmlhIHNjcmlwdCwgb2ssIG5vIHByb2JsZW0sIHRoZSBzY3JpcHQgY2FuIGhhbmRsZSB0aGF0LgpJ
ZiB5b3Ugd2FudCB1c2VycyB0byBkZWxpdmVyIGFjY2VwdGFibGUgeWFtbCBmaWxlcywgeW91IHNo
b3VsZCBjcmVhdGUgYSAieWFtbC1nZW5lcmF0b3IiIHdoZXJlIHlvdSBjYW4gZWFzaWx5IGNob3Nl
IGluIGRyb3Bkb3duIGxpc3RzIHdoaWNoIFNvQywgd2hhdCBSQU0gY2hpcCwgLi4uLi4KVGhlIGN1
cnJlbnQgZGF0YWVudHJpZXMgZG8gYWxyZWFkeSBoYXZlIGRyb3Bkb3ducyBmb3Igc2V2ZXJhbCBm
ZWF0dXJlcywgaG93ZXZlciwgU29DICsgV2lyZWxlc3MgaGFyZHdhcmUgYXJlIGZyZWV0ZXh0LCBu
byBkcm9wZG93bnMuIEhhdmluZyB0aGF0IGF1dG9tYXRlZCB3b3VsZCBiZSBhIGdhaW4uCgpSZWdh
cmRzLAoKVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
