Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39308E012A
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 11:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJovs3PjH8EfEbOB9NCozEUi+7uRuqAtEjYlGea1sI8=; b=AlR/tWniDd4oro
	KWBCYi19QVov/6YsNU5Fj5H+8SverxvHp95qnc8ri665gmKsj6VKxuJHbxWSwtITn3tX5Ylc3Oeuh
	+FaFc2g/zb+MWmBlMQ1FlJSg1VwRT7zBv8BOo1nsqQ0GMj0igeKvzdLPJHYVlvJuIunnzZK+JKur2
	3q6GDIRURyqKyRPn25dFeNf/sykojl/WgcvKgu1yQA8qgLdtrdv5OhHDPYH/QI90CjS131nPuFGqr
	HKZw9Y/BjibBsXXepgBPUk4Udo8+xOu5/5NSLaqeOpeCxC7OKZHuniCdG2TDP6lIdJwnjiDqhWaSV
	EcTGvDJeDDVhl6FRb4Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqqD-000177-Sg; Tue, 22 Oct 2019 09:52:37 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqpf-0000cV-Mk
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 09:52:07 +0000
Received: from [192.168.180.1] (port=34208 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1iMqpU-0008VU-2t
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 11:51:52 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id BEBC72804B7;
 Tue, 22 Oct 2019 11:51:52 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 22 Oct 2019 11:51:47 +0200
Message-Id: <20191022095149.2385-2-avalentin@marcant.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022095149.2385-1-avalentin@marcant.net>
References: <20191022095149.2385-1-avalentin@marcant.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_025203_894546_069C5F72 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/3] tools/mkrasimage: Add support for 128k
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
IHRvb2xzL2Zpcm13YXJlLXV0aWxzL3NyYy9ta3Jhc2ltYWdlLmMgfCAxMSArKysrKysrKy0tLQog
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS90b29scy9maXJtd2FyZS11dGlscy9zcmMvbWtyYXNpbWFnZS5jIGIvdG9vbHMvZmlybXdh
cmUtdXRpbHMvc3JjL21rcmFzaW1hZ2UuYwppbmRleCA4ZWVlMjljYzA4Li5jZmYzYTUzM2QxIDEw
MDY0NAotLS0gYS90b29scy9maXJtd2FyZS11dGlscy9zcmMvbWtyYXNpbWFnZS5jCisrKyBiL3Rv
b2xzL2Zpcm13YXJlLXV0aWxzL3NyYy9ta3Jhc2ltYWdlLmMKQEAgLTcwLDYgKzcwLDcgQEAgc3Rh
dGljIGNoYXIgKnByb2duYW1lOwogc3RhdGljIGNoYXIgKmJvYXJkX25hbWUgPSAwOwogc3RhdGlj
IGNoYXIgKnZlcnNpb25fbmFtZSA9IDA7CiBzdGF0aWMgdW5zaWduZWQgaW50IHJvb3Rmc19zaXpl
ID0gMDsKK3N0YXRpYyB1bnNpZ25lZCBpbnQgaGVhZGVyX2xlbmd0aCA9IEhFQURFUl9QQVJUSVRJ
T05fTEVOR1RIOwogCiBzdGF0aWMgc3RydWN0IGZpbGVfaW5mbyBrZXJuZWwgPSB7IE5VTEwsIE5V
TEwsIDAgfTsKIHN0YXRpYyBzdHJ1Y3QgZmlsZV9pbmZvIHJvb3RmcyA9IHsgTlVMTCwgTlVMTCwg
MCB9OwpAQCAtMTQ0LDYgKzE0NSw3IEBAIHZvaWQgdXNhZ2UoaW50IHN0YXR1cykKICAgICAgICAg
ICAgICIgIC12IDx2ZXJzaW9uPiAgICB2ZXJzaW9uIHN0cmluZ1xuIgogICAgICAgICAgICAgIiAg
LWIgPGJvYXJkbmFtZT4gIG5hbWUgb2YgYm9hcmQgdG8gZ2VuZXJhdGUgaW1hZ2UgZm9yXG4iCiAg
ICAgICAgICAgICAiICAtbyA8b3V0X25hbWU+ICAgbmFtZSBvZiBvdXRwdXQgaW1hZ2VcbiIKKyAg
ICAgICAgICAgICIgIC1sIDxoZHJfbGVuZ3RoPiBsZW5ndGggb2YgaGVhZGVyLCBkZWZhdWx0IDY1
NTM2XG4iCiAgICAgICAgICAgICAiICAtaCAgICAgICAgICAgICAgc2hvdyB0aGlzIHNjcmVlblxu
IgogICAgICk7CiAKQEAgLTMzNCw3ICszMzYsNyBAQCBpbnQgYnVpbGRfaW1hZ2UoKQogICAgIGJv
YXJkX2hlYWRlciA9IGdlbmVyYXRlX2JvYXJkX2hlYWRlcihrZXJuZWxfaGVhZGVyLCByb290ZnNf
aGVhZGVyLCBib2FyZF9uYW1lKTsKIAogICAgIC8qIFByZXBhcmUgb3V0cHV0IGZpbGUgKi8KLSAg
ICBvdXQuc2l6ZSA9IEhFQURFUl9QQVJUSVRJT05fTEVOR1RIICsgcm9vdGZzX291dC5zaXplOwor
ICAgIG91dC5zaXplID0gaGVhZGVyX2xlbmd0aCArIHJvb3Rmc19vdXQuc2l6ZTsKICAgICBpZiAo
a2VybmVsLm5hbWUpCiAgICAgICAgIG91dC5zaXplICs9IGtlcm5lbC5zaXplOwogICAgIG91dC5k
YXRhID0gbWFsbG9jKG91dC5zaXplKTsKQEAgLTM0NSw3ICszNDcsNyBAQCBpbnQgYnVpbGRfaW1h
Z2UoKQogICAgIG1lbWNweShvdXQuZGF0YSArIFJPT1RGU19IRUFERVJfTEVOLCBib2FyZF9oZWFk
ZXIsIEJPQVJEX0hFQURFUl9MRU4pOwogICAgIGlmIChrZXJuZWwubmFtZSkKICAgICAgICAgbWVt
Y3B5KG91dC5kYXRhICsgUk9PVEZTX0hFQURFUl9MRU4gKyBCT0FSRF9IRUFERVJfTEVOLCBrZXJu
ZWxfaGVhZGVyLCBLRVJORUxfSEVBREVSX0xFTik7Ci0gICAgcHRyID0gSEVBREVSX1BBUlRJVElP
Tl9MRU5HVEg7CisgICAgcHRyID0gaGVhZGVyX2xlbmd0aDsKICAgICBtZW1jcHkob3V0LmRhdGEg
KyBwdHIsIHJvb3Rmc19vdXQuZGF0YSwgcm9vdGZzX291dC5zaXplKTsKICAgICBwdHIgKz0gcm9v
dGZzX291dC5zaXplOwogICAgIGlmIChrZXJuZWwubmFtZSkKQEAgLTQxMCw3ICs0MTIsNyBAQCBp
bnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQogICAgIHdoaWxlICgxKSB7CiAgICAgICAg
IGludCBjOwogCi0gICAgICAgIGMgPSBnZXRvcHQoYXJnYywgYXJndiwgImI6azpvOnI6czp2Omgi
KTsKKyAgICAgICAgYyA9IGdldG9wdChhcmdjLCBhcmd2LCAiYjprOm86cjpzOnY6bDpoIik7CiAg
ICAgICAgIGlmIChjID09IC0xKQogICAgICAgICAgICAgYnJlYWs7CiAKQEAgLTQzNiw2ICs0Mzgs
OSBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQogICAgICAgICAgICAgY2FzZSAn
dic6CiAgICAgICAgICAgICAgICAgdmVyc2lvbl9uYW1lID0gb3B0YXJnOwogICAgICAgICAgICAg
ICAgIGJyZWFrOworICAgICAgICAgICAgY2FzZSAnbCc6CisgICAgICAgICAgICAgICAgc3NjYW5m
KG9wdGFyZywgIiV1IiwgJmhlYWRlcl9sZW5ndGgpOworICAgICAgICAgICAgICAgIGJyZWFrOwog
ICAgICAgICAgICAgZGVmYXVsdDoKICAgICAgICAgICAgICAgICB1c2FnZShFWElUX0ZBSUxVUkUp
OwogICAgICAgICAgICAgICAgIGJyZWFrOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
