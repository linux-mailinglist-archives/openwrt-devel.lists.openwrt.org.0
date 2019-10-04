Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B29CBABC
	for <lists+openwrt-devel@lfdr.de>; Fri,  4 Oct 2019 14:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P2eTvYQAPXRa9rmAJLJpmwqJJgFsdalpBtoa6zYC6c0=; b=XRc818lhW1t/M9
	73SshRod/9OovxA+nGO74VaimoraEj8OATjBMA0mnQhQ7ApGF5rCpaudQbkx22pRkOrYRG5NDPY5L
	/6PjM/4A3YTnscXVvVD75LlXR8IhUa8YxFP/vdJ/rfqMp14pxu/gCWxQqKct0z5LtnQJVJYSzuhYO
	boJsbtHfLAzXuIrZeD+/aO/pXkFA2TfhXL7NqTj+zwg/ui8KY/TTYzOOlhQCAb5wkoPQBCGkLDm1h
	dRhi3L88nyU7sVcerMTaMqqJZ2QmS+xeTErqmb/Hxj5RqQXldlAXsFeG50aWZlfy5JWtBFWPJBNB5
	9OAsQE7MeSkMyWY8ykeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMvk-0008Lm-Sw; Fri, 04 Oct 2019 12:43:32 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMvc-0008LB-N1
 for openwrt-devel@lists.openwrt.org; Fri, 04 Oct 2019 12:43:26 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MI59b-1iImq21FCR-00FDSF; Fri, 04 Oct 2019 14:43:09 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  4 Oct 2019 14:43:05 +0200
Message-Id: <20191004124305.4110-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:e53kMEIZdR+zhgjqeLzRFWjARzGg5zFNg6i0zS3NVU332a+AFDG
 zNYVywbdZePqKXsMUDzi9ThemqobhibbtlzTkp6ORZU5j1J83SCvVyk4I5LiBauSdIzFKFl
 BPFJC6hsltggb8qG8M1KfkLtGDstES9cp1Nryn/1XgMPsBDGzP6Rm422rvMnkEk5xlHUYHk
 t9nMz9E7HoDrM5bik2BEQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qIsCXD2Tyts=:wAe8//8Ab6mWeT9qWfs6gr
 xnxtoUWopQdp21WWwLh4mPhKh2bkymeuA9W0jiT4IXGeUqxVv2mDwgHTEDdUfGjBaeMLgwoy2
 ASKNbX7U6pRyGyjLjusf+oWQQ35tEVVZrySUQtj5xarcJkRXUzxua8ZK4qniGTJuvVcMVEs8M
 AINRN8520DnR85eUJJbiyZ6iCppBJI5jVOphjmiuffwHoQ6S6rDSIMtgZTXJ8qZLpao9+SB1z
 Jx4EX0PFi7RalUajRCDf+B1xioTH4q3If+pjbFIXOTaG3VD9UFACD0W169uflUgYzA8tkiRRq
 EKIWa2vLsQVE3FfITtjf429HK8fZPipTw2Pj8DAZgdk8vctRCC7Fc39kysvuhcAD2fmPqL73X
 7mnyAO3JAawGjjcRN8GVYfdhSmHZeN+VjMU+dqqOYYkwfHLqgO7mBE+184cf62GqAMJ2i7Ajj
 93H6o+RG4NxIXA4rVCZBVWlGswhLYwrlUiKSfi/sNM0IhcWEDa1Z/lCLXzjiieU5PlvouyOTT
 wa2cI2lRh0BDONLh4x/3hr0aTb43B1R55pNaGVIpEH7npUMmRxkHB6RzTkeDdgdsWjZa7LNXo
 Eco9mmu5SNFx8qGuOtsDO239qjPl/RFMZiBzab6UWCz83KPkhu5bvNGWc8m+ylldASMDI8SH7
 pHpcN7PxqXC+a74Id9TLkm6p6t+fEeILLrlagiDZE5D+GbB1AX5AZOjsfJWhFYTnu6wgQw4UJ
 f0kFfKRN771GFmOm7TtwVxPkgFS1ns3y0pXthSLnFUrRBKL6sRP05TxLpUFafiAlTFlDuId76
 dB4drTZFTfjrQRviO1jOTyolRQP7JmekinR9h625cYVxWzwazbyiKIMAlGyqiePTEgsJ1f510
 A3gmxuSbKhwamfDMMbrsvLxaZ9II5rJFW/rEsFOjw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_054325_043630_AC95874F 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] ath79: add SUPPORTED_DEVICES to
 ubnt_nanostation-m-xw
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

RnJvbTogUm9nZXIgUHVleW8gQ2VudGVsbGVzIDxyb2dlci5wdWV5b0BndWlmaS5uZXQ+CgpUaGUg
YXI3MXh4IGltYWdlcyBmb3IgdGhlIFViaXF1aXRpIE5hbm9TdGF0aW9uIE0gKFhXKSBkZXZpY2Vz
IHVzZQoibmFub3N0YXRpb24tbS14dyIgYXMgdGhlIGJvYXJkIG5hbWUsIGJ1dCB0aGUgYXRoNzkg
aW1hZ2VzIGFyZSBvbmx5CmNvbXBhdGlibGUgd2l0aCB0aGUgIm5hbm8tbS14dyIgYm9hcmQgbmFt
ZSwgc28gc3lzdXBncmFkZSBjb21wbGFpbnMuCgpCeSBhZGRpbmcgdGhpcyBhZGRpdGlvbmFsIHN1
cHBvcnRlZCBkZXZpY2UsIHN5c3VzcGdyYWRlIHNtb290aGx5CnVwZ3JhZGVzIGZyb20gYXI3MXh4
IHRvIGF0aDc5LgoKVGVzdGVkIG9uIGEgTmFub1N0YXRpb24gTSAoWFcpIHJ1bm5pbmcgT3Blbldy
dCBhcjcxeHggcjEwMjUwLTAxNmQxZWIuCgpSZWY6IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0
L29wZW53cnQvcHVsbC8yNDE4ClNpZ25lZC1vZmYtYnk6IFJvZ2VyIFB1ZXlvIENlbnRlbGxlcyA8
cm9nZXIucHVleW9AZ3VpZmkubmV0PgpbcmVtb3ZlZCBkdXBsaWNhdGUgREVWSUNFX1ZBUklBTlQs
IHJlbW92ZWQgdW5lZWRlZCBuYW5vLW0teHcgc3VwcG9ydF0KU2lnbmVkLW9mZi1ieTogUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4KKGNoZXJyeSBwaWNrZWQgZnJvbSBjb21taXQgNmRkYTJl
YTZhZDEzMzcwNWQyNDNkM2NjNjI2Nzc5ZWUyNGJkYzg4ZCkKU2lnbmVkLW9mZi1ieTogQWRyaWFu
IFNjaG11dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+Ci0tLQogdGFyZ2V0L2xp
bnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMtdWJudC5tayB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9h
dGg3OS9pbWFnZS9nZW5lcmljLXVibnQubWsgYi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvZ2Vu
ZXJpYy11Ym50Lm1rCmluZGV4IGFjM2I5MzU5MDAuLjk0ZmVlNjEzNjQgMTAwNjQ0Ci0tLSBhL3Rh
cmdldC9saW51eC9hdGg3OS9pbWFnZS9nZW5lcmljLXVibnQubWsKKysrIGIvdGFyZ2V0L2xpbnV4
L2F0aDc5L2ltYWdlL2dlbmVyaWMtdWJudC5tawpAQCAtMTE2LDcgKzExNiw3IEBAIFRBUkdFVF9E
RVZJQ0VTICs9IHVibnRfbmFub3N0YXRpb24tbQogZGVmaW5lIERldmljZS91Ym50X25hbm9zdGF0
aW9uLW0teHcKICAgJChEZXZpY2UvdWJudC14dykKICAgREVWSUNFX1RJVExFIDo9IFViaXF1aXRp
IE5hbm9zdGF0aW9uIE0gKFhXKQotICBTVVBQT1JURURfREVWSUNFUyArPSBuYW5vLW0teHcKKyAg
U1VQUE9SVEVEX0RFVklDRVMgKz0gbmFub3N0YXRpb24tbS14dwogZW5kZWYKIFRBUkdFVF9ERVZJ
Q0VTICs9IHVibnRfbmFub3N0YXRpb24tbS14dwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
