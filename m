Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A04C18A827
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 23:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otgeUBU5pgAbHWENJr5Vmd2le6IMgPoAGdNxmn0+9Nk=; b=UytIRgmYuSJCL9
	xgt+353rNW59YrgdrfYg136YBy1RkgAPNel2t25Qz5s1JHWu5dZDbBiTwpI5FqSQq77np34cpM7z3
	T4yjBOY3+qeu0HTjXlrKBrc80odmdIKzvn+rvSdcAmIS7+FvDzsWZIEOdgRNya+zrpr3dBPMlMhj2
	ZJCm5gI2SHWvNVjXs/1wAku2Ie30c1rrMEoxvNxI1phu3ny0S1U5mpeIFKVdVe14VcxGF24ghXPy4
	6zUNOPFRVYHWb/jnPJEfh1rD9rHpaGnKetQguLzTMEANFqkEc/inKn4gcu+Xe8NSS/BRClod0wjj+
	xriftKeHiNiex01TM+dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhBM-0008TT-Kh; Wed, 18 Mar 2020 22:29:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhA7-0006w6-OM
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 22:27:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D2B834C1D;
 Wed, 18 Mar 2020 23:27:38 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a4046ff5;
 Wed, 18 Mar 2020 23:27:25 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:09 +0100
Message-Id: <20200318222713.1495-6-ynezz@true.cz>
In-Reply-To: <20200318222713.1495-1-ynezz@true.cz>
References: <20200318222713.1495-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_152743_952210_46FE7203 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/9] sunxi: a53: image: make it DRY
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmVwbGFjZSBzYW1lIGNvcHkmcGFzdGVkIGxpbmVzIHdpdGggdGhlIGFwcHJvcHJpYXRlIHJldXNh
YmxlIGJpdHMuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgot
LS0KIHRhcmdldC9saW51eC9zdW54aS9pbWFnZS9jb3J0ZXgtYTUzLm1rIHwgNDYgKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAyNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvc3VueGkvaW1hZ2UvY29ydGV4
LWE1My5tayBiL3RhcmdldC9saW51eC9zdW54aS9pbWFnZS9jb3J0ZXgtYTUzLm1rCmluZGV4IGVl
YWFhODg3ZDdmMi4uNzlkZDQzYzYwZmEzIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvc3VueGkv
aW1hZ2UvY29ydGV4LWE1My5taworKysgYi90YXJnZXQvbGludXgvc3VueGkvaW1hZ2UvY29ydGV4
LWE1My5tawpAQCAtNiwxNCArNiwyNyBAQAogIyBTZWUgL0xJQ0VOU0UgZm9yIG1vcmUgaW5mb3Jt
YXRpb24uCiAjCiAKK2RlZmluZSBEZXZpY2Uvc3VuNTBpCisgIFNVTlhJX0RUU19ESVIgOj0gYWxs
d2lubmVyLworICBLRVJORUxfTkFNRSA6PSBJbWFnZQorICBLRVJORUwgOj0ga2VybmVsLWJpbgor
ZW5kZWYKKworZGVmaW5lIERldmljZS9zdW41MGktaDUKKyAgU09DIDo9IHN1bjUwaS1oNQorICAk
KERldmljZS9zdW41MGkpCitlbmRlZgorCitkZWZpbmUgRGV2aWNlL3N1bjUwaS1hNjQKKyAgU09D
IDo9IHN1bjUwaS1hNjQKKyAgJChEZXZpY2Uvc3VuNTBpKQorZW5kZWYKKwogZGVmaW5lIERldmlj
ZS9mcmllbmRseWFybV9uYW5vcGktbmVvLXBsdXMyCiAgIERFVklDRV9WRU5ET1IgOj0gRnJpZW5k
bHlBUk0KICAgREVWSUNFX01PREVMIDo9IE5hbm9QaSBORU8gUGx1czIKICAgU1VQUE9SVEVEX0RF
VklDRVM6PW5hbm9waS1uZW8tcGx1czIKLSAgU1VOWElfRFRTX0RJUiA6PSBhbGx3aW5uZXIvCi0g
IFNPQyA6PSBzdW41MGktaDUKLSAgS0VSTkVMX05BTUUgOj0gSW1hZ2UKLSAgS0VSTkVMIDo9IGtl
cm5lbC1iaW4KKyAgJChEZXZpY2Uvc3VuNTBpLWg1KQogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9
IGZyaWVuZGx5YXJtX25hbm9waS1uZW8tcGx1czIKIApAQCAtMjEsNDkgKzM0LDM0IEBAIGRlZmlu
ZSBEZXZpY2UvZnJpZW5kbHlhcm1fbmFub3BpLW5lbzIKICAgREVWSUNFX1ZFTkRPUiA6PSBGcmll
bmRseUFSTQogICBERVZJQ0VfTU9ERUwgOj0gTmFub1BpIE5FTzIKICAgU1VQUE9SVEVEX0RFVklD
RVM6PW5hbm9waS1uZW8yCi0gIFNVTlhJX0RUU19ESVIgOj0gYWxsd2lubmVyLwotICBTT0MgOj0g
c3VuNTBpLWg1Ci0gIEtFUk5FTF9OQU1FIDo9IEltYWdlCi0gIEtFUk5FTCA6PSBrZXJuZWwtYmlu
CisgICQoRGV2aWNlL3N1bjUwaS1oNSkKIGVuZGVmCiBUQVJHRVRfREVWSUNFUyArPSBmcmllbmRs
eWFybV9uYW5vcGktbmVvMgogCiBkZWZpbmUgRGV2aWNlL3BpbmU2NF9waW5lNjQtcGx1cwogICBE
RVZJQ0VfVkVORE9SIDo9IFBpbmU2NAogICBERVZJQ0VfTU9ERUwgOj0gUGluZTY0KwotICBTVU5Y
SV9EVFNfRElSIDo9IGFsbHdpbm5lci8KLSAgU09DIDo9IHN1bjUwaS1hNjQKLSAgS0VSTkVMX05B
TUUgOj0gSW1hZ2UKLSAgS0VSTkVMIDo9IGtlcm5lbC1iaW4KKyAgJChEZXZpY2Uvc3VuNTBpLWE2
NCkKIGVuZGVmCiBUQVJHRVRfREVWSUNFUyArPSBwaW5lNjRfcGluZTY0LXBsdXMKIAogZGVmaW5l
IERldmljZS9waW5lNjRfc29waW5lLWJhc2Vib2FyZAogICBERVZJQ0VfVkVORE9SIDo9IFBpbmU2
NAogICBERVZJQ0VfTU9ERUwgOj0gU29QaW5lCi0gIFNVTlhJX0RUU19ESVIgOj0gYWxsd2lubmVy
LwotICBTT0MgOj0gc3VuNTBpLWE2NAotICBLRVJORUxfTkFNRSA6PSBJbWFnZQotICBLRVJORUwg
Oj0ga2VybmVsLWJpbgorICAkKERldmljZS9zdW41MGktYTY0KQogZW5kZWYKIFRBUkdFVF9ERVZJ
Q0VTICs9IHBpbmU2NF9zb3BpbmUtYmFzZWJvYXJkCiAKIGRlZmluZSBEZXZpY2UveHVubG9uZ19v
cmFuZ2VwaS1wYzIKICAgREVWSUNFX1ZFTkRPUiA6PSBYdW5sb25nCiAgIERFVklDRV9NT0RFTCA6
PSBPcmFuZ2UgUGkgUEMgMgotICBTVU5YSV9EVFNfRElSIDo9IGFsbHdpbm5lci8KLSAgU09DIDo9
IHN1bjUwaS1oNQotICBLRVJORUxfTkFNRSA6PSBJbWFnZQotICBLRVJORUwgOj0ga2VybmVsLWJp
bgorICAkKERldmljZS9zdW41MGktaDUpCiBlbmRlZgogVEFSR0VUX0RFVklDRVMgKz0geHVubG9u
Z19vcmFuZ2VwaS1wYzIKIAogZGVmaW5lIERldmljZS94dW5sb25nX29yYW5nZXBpLXplcm8tcGx1
cwogICBERVZJQ0VfVkVORE9SIDo9IFh1bmxvbmcKICAgREVWSUNFX01PREVMIDo9IE9yYW5nZSBQ
aSBaZXJvIFBsdXMKLSAgU1VOWElfRFRTX0RJUiA6PSBhbGx3aW5uZXIvCi0gIFNPQyA6PSBzdW41
MGktaDUKLSAgS0VSTkVMX05BTUUgOj0gSW1hZ2UKLSAgS0VSTkVMIDo9IGtlcm5lbC1iaW4KKyAg
JChEZXZpY2Uvc3VuNTBpLWg1KQogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IHh1bmxvbmdfb3Jh
bmdlcGktemVyby1wbHVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
