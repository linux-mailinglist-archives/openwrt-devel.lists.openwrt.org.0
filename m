Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A59DEC4E
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wI30p1WPCdmoRifmhvJVSXwA/4KtpkdpNSHGAftahoE=; b=coq+f4CQ6bX/AF
	H2ZaVTybJ9SaSawYi9DIB0rRwZ7/t8DGmGodjWNM6kHf9Fd+6ZwuAtZt0TQHCuM5cFcFajokL+qU6
	6OpYgMk+G5jG5SOLQsgxIAYqxn0DGdcFNJEhXiZf36+3Uav3wHTcDGRA2uYQY1Y9KoBH5QXanzx40
	dhekVtTXdjJLep+bBpdyEYJQAusWaWYPEH2pAMu6TTvuHhrhvs1bDr1z1Rd34DZhOf57UW/i0lCPd
	mqZrKkpSOYlH7DWuKnNf3VmAEk5t/ccqeTaoB37JtOhIUQNJNHloIFo/zU9Gzc+ZO8oHnI4n6E8Vl
	A4YrrcC1N7zayJVePeIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWrv-0006EK-Fu; Mon, 21 Oct 2019 12:33:03 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWrN-0005kw-Rq
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:32:33 +0000
Received: from [192.168.180.1] (port=54458 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1iMWrE-00081D-26
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:32:20 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 7EDD22802BF;
 Mon, 21 Oct 2019 14:32:20 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 14:32:10 +0200
Message-Id: <20191021123214.2252-2-avalentin@marcant.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021123214.2252-1-avalentin@marcant.net>
References: <20191021123214.2252-1-avalentin@marcant.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_053230_060130_940E05C3 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/5] tools/mkrasimage: Add support for 128k
 header size
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
Cc: avalentin@marcant.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

MTI4ayBoZWFkZXIgc2l6ZSBzdXBwb3J0IGlzIG5lZWRlZCBmb3IgWnlYRUwgTkJHNjcxNi4KClNp
Z25lZC1vZmYtYnk6IEFuZHLDqSBWYWxlbnRpbiA8YXZhbGVudGluQG1hcmNhbnQubmV0PgotLS0K
IHRvb2xzL2Zpcm13YXJlLXV0aWxzL3NyYy9ta3Jhc2ltYWdlLmMgfCAxMiArKysrKysrKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvdG9vbHMvZmlybXdhcmUtdXRpbHMvc3JjL21rcmFzaW1hZ2UuYyBiL3Rvb2xzL2Zpcm13
YXJlLXV0aWxzL3NyYy9ta3Jhc2ltYWdlLmMKaW5kZXggOGVlZTI5Y2MwOC4uNTI2YTFmM2E0MyAx
MDA2NDQKLS0tIGEvdG9vbHMvZmlybXdhcmUtdXRpbHMvc3JjL21rcmFzaW1hZ2UuYworKysgYi90
b29scy9maXJtd2FyZS11dGlscy9zcmMvbWtyYXNpbWFnZS5jCkBAIC01Nyw3ICs1Nyw2IEBACiAj
ZGVmaW5lIEJPQVJEX0hFQURFUl9MRU4gNjgKIAogI2RlZmluZSBIRUFERVJfUEFSVElUSU9OX0NB
TENfTEVOR1RIIDIwNDgKLSNkZWZpbmUgSEVBREVSX1BBUlRJVElPTl9MRU5HVEggMHgxMDAwMAog
CiBzdHJ1Y3QgZmlsZV9pbmZvIHsKICAgICBjaGFyICpuYW1lOyAgICAvKiBuYW1lIG9mIHRoZSBm
aWxlICovCkBAIC03MCw2ICs2OSw3IEBAIHN0YXRpYyBjaGFyICpwcm9nbmFtZTsKIHN0YXRpYyBj
aGFyICpib2FyZF9uYW1lID0gMDsKIHN0YXRpYyBjaGFyICp2ZXJzaW9uX25hbWUgPSAwOwogc3Rh
dGljIHVuc2lnbmVkIGludCByb290ZnNfc2l6ZSA9IDA7CitzdGF0aWMgdW5zaWduZWQgaW50IGhl
YWRlcl9sZW5ndGggPSAweDEwMDAwOwogCiBzdGF0aWMgc3RydWN0IGZpbGVfaW5mbyBrZXJuZWwg
PSB7IE5VTEwsIE5VTEwsIDAgfTsKIHN0YXRpYyBzdHJ1Y3QgZmlsZV9pbmZvIHJvb3RmcyA9IHsg
TlVMTCwgTlVMTCwgMCB9OwpAQCAtMTQ0LDYgKzE0NCw3IEBAIHZvaWQgdXNhZ2UoaW50IHN0YXR1
cykKICAgICAgICAgICAgICIgIC12IDx2ZXJzaW9uPiAgICB2ZXJzaW9uIHN0cmluZ1xuIgogICAg
ICAgICAgICAgIiAgLWIgPGJvYXJkbmFtZT4gIG5hbWUgb2YgYm9hcmQgdG8gZ2VuZXJhdGUgaW1h
Z2UgZm9yXG4iCiAgICAgICAgICAgICAiICAtbyA8b3V0X25hbWU+ICAgbmFtZSBvZiBvdXRwdXQg
aW1hZ2VcbiIKKyAgICAgICAgICAgICIgIC1sIDxoZHJfbGVuZ3RoPiBsZW5ndGggb2YgaGVhZGVy
LCBkZWZhdWx0IDY1NTM2XG4iCiAgICAgICAgICAgICAiICAtaCAgICAgICAgICAgICAgc2hvdyB0
aGlzIHNjcmVlblxuIgogICAgICk7CiAKQEAgLTMzNCw3ICszMzUsNyBAQCBpbnQgYnVpbGRfaW1h
Z2UoKQogICAgIGJvYXJkX2hlYWRlciA9IGdlbmVyYXRlX2JvYXJkX2hlYWRlcihrZXJuZWxfaGVh
ZGVyLCByb290ZnNfaGVhZGVyLCBib2FyZF9uYW1lKTsKIAogICAgIC8qIFByZXBhcmUgb3V0cHV0
IGZpbGUgKi8KLSAgICBvdXQuc2l6ZSA9IEhFQURFUl9QQVJUSVRJT05fTEVOR1RIICsgcm9vdGZz
X291dC5zaXplOworICAgIG91dC5zaXplID0gaGVhZGVyX2xlbmd0aCArIHJvb3Rmc19vdXQuc2l6
ZTsKICAgICBpZiAoa2VybmVsLm5hbWUpCiAgICAgICAgIG91dC5zaXplICs9IGtlcm5lbC5zaXpl
OwogICAgIG91dC5kYXRhID0gbWFsbG9jKG91dC5zaXplKTsKQEAgLTM0NSw3ICszNDYsNyBAQCBp
bnQgYnVpbGRfaW1hZ2UoKQogICAgIG1lbWNweShvdXQuZGF0YSArIFJPT1RGU19IRUFERVJfTEVO
LCBib2FyZF9oZWFkZXIsIEJPQVJEX0hFQURFUl9MRU4pOwogICAgIGlmIChrZXJuZWwubmFtZSkK
ICAgICAgICAgbWVtY3B5KG91dC5kYXRhICsgUk9PVEZTX0hFQURFUl9MRU4gKyBCT0FSRF9IRUFE
RVJfTEVOLCBrZXJuZWxfaGVhZGVyLCBLRVJORUxfSEVBREVSX0xFTik7Ci0gICAgcHRyID0gSEVB
REVSX1BBUlRJVElPTl9MRU5HVEg7CisgICAgcHRyID0gaGVhZGVyX2xlbmd0aDsKICAgICBtZW1j
cHkob3V0LmRhdGEgKyBwdHIsIHJvb3Rmc19vdXQuZGF0YSwgcm9vdGZzX291dC5zaXplKTsKICAg
ICBwdHIgKz0gcm9vdGZzX291dC5zaXplOwogICAgIGlmIChrZXJuZWwubmFtZSkKQEAgLTQxMCw3
ICs0MTEsNyBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQogICAgIHdoaWxlICgx
KSB7CiAgICAgICAgIGludCBjOwogCi0gICAgICAgIGMgPSBnZXRvcHQoYXJnYywgYXJndiwgImI6
azpvOnI6czp2OmgiKTsKKyAgICAgICAgYyA9IGdldG9wdChhcmdjLCBhcmd2LCAiYjprOm86cjpz
OnY6bDpoIik7CiAgICAgICAgIGlmIChjID09IC0xKQogICAgICAgICAgICAgYnJlYWs7CiAKQEAg
LTQzNiw2ICs0MzcsOSBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQogICAgICAg
ICAgICAgY2FzZSAndic6CiAgICAgICAgICAgICAgICAgdmVyc2lvbl9uYW1lID0gb3B0YXJnOwog
ICAgICAgICAgICAgICAgIGJyZWFrOworICAgICAgICAgICAgY2FzZSAnbCc6CisgICAgICAgICAg
ICAgICAgc3NjYW5mKG9wdGFyZywgIiV1IiwgJmhlYWRlcl9sZW5ndGgpOworICAgICAgICAgICAg
ICAgIGJyZWFrOwogICAgICAgICAgICAgZGVmYXVsdDoKICAgICAgICAgICAgICAgICB1c2FnZShF
WElUX0ZBSUxVUkUpOwogICAgICAgICAgICAgICAgIGJyZWFrOwotLSAKMi4yMC4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
