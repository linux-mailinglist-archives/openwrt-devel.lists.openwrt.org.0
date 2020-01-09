Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854B7135D32
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Jan 2020 16:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YtoXQBpOGfatWXJvs1hYl7MBpHRC63VkweUJgcGg3lQ=; b=eV9
	dzGImDeC7EqwwSaKEqq9Ate6QytAlZjCan3IbD7baQ6HUaeJzshZKvm0VRxtguiqzTOFto9t4jBtG
	xVGJ7LiPVKhRN7rQ9L0R5a/Ywo4ISMdGOnq/niCDndNywnn7/rhWpPuv1jCKOIrB7hz66DJghjfBy
	y+lBLusiSoaNI55xf9JEyTa5ys1Sp7+n6BUxcoEXpmGuEB9fWi75It+WySxZVmvv878GGJEAQgL2o
	BR8B4gbfbtli2zsZFn3tzw0F1Mtn+HZfgAyBjkLzBoJMRoDi3BTV5P1Bq0iBwMLlpplkd8/y9G6gk
	p7XXLRM8wgyBZYVaalYWwTyHM6Dh/Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipa3T-00063V-9z; Thu, 09 Jan 2020 15:49:03 +0000
Date: Thu, 9 Jan 2020 17:48:41 +0200
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.23366.1578584937.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Dainis Jonitis via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Dainis Jonitis <dainis.jonitis@ui.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] libubox: Handle 64-bit values in
 blobmsg_add_json_element()
Content-Type: multipart/mixed; boundary="===============4056047913758033991=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4056047913758033991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4056047913758033991==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipa3L-000638-DS
	for openwrt-devel@lists.openwrt.org; Thu, 09 Jan 2020 15:48:56 +0000
Received: by mail-io1-xd35.google.com with SMTP id i11so7538158ioi.12
        for <openwrt-devel@lists.openwrt.org>; Thu, 09 Jan 2020 07:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ui.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=U4lHaZ+YfJ8LVd5E/8iWSyDqUG0jBSEX2ZxwglibBg0=;
        b=ANjn8sqNmAu5KcO/2mjzZ4H5U0TDSS4o4Ui0lwdHHZ4z1JxqdP2hdwhU0YyxuLMDHO
         aB7N74+RAi0cm083HkXZHUWpb0ytSGUXNlcWS/250T5ymbGIvRZlzEqWOVl7yBDdW/X7
         0FDivZcc9BccekxfoCpy8uQeg+8y0rpUQkPg4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=U4lHaZ+YfJ8LVd5E/8iWSyDqUG0jBSEX2ZxwglibBg0=;
        b=iU9swmue6RJ2yRt0qsRYFWjnZ4LehMoV34+cVpPoEAq8XkSTYt9eC70YTaLEKzTiHa
         TPg5QDi6RaX9nexKMWq/QsNW7nLAO3RdmKSwLmum61RzzyPi8sv4i0tlHw171mrv3bi8
         nMiULBIwVvKAbAaLpu5OwXHzweXtBC3vbNQnRWKKskIIIi5IrSRTZzOFagBdSsQwY4FZ
         UNH0RYIsJZl4YhfPmq7ZUYxehuC/he2YF9eFzZbH9hhcS3ubtdkOTeV0ENYo3FBg5run
         9mzQaoymGUQuCXMAaCFxlvIQHCb4w01hzmHLucx4D5zYRmhCjdxo7tjZR2+JnhaK7dw0
         mQjg==
X-Gm-Message-State: APjAAAV2txRIyrIQtvuJ3dYWjIksq2znERvPiq+hIZzsDiWFZ2nylRfh
	jH/ss1INmVoz74NSmLcpDe07w8GvQfis+djNTdLS9ZcmYJ00Mg==
X-Google-Smtp-Source: APXvYqxI/4wpHQdApAHvFrNI9ahkvprmUts8a+12NitOmYmep7t0MKh/rKXmTjxf2nHqgmae071p2IivHyM9ec+uDVI=
X-Received: by 2002:a5e:8813:: with SMTP id l19mr8588026ioj.261.1578584934103;
 Thu, 09 Jan 2020 07:48:54 -0800 (PST)
MIME-Version: 1.0
From: Dainis Jonitis <dainis.jonitis@ui.com>
Date: Thu, 9 Jan 2020 17:48:41 +0200
Message-ID: <CAGpbteRVJbo0JtCT4D-tnjFQyJfuh2mD2h-375j6js9DNSiH1g@mail.gmail.com>
Subject: libubox: Handle 64-bit values in blobmsg_add_json_element()
To: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="0000000000003f2129059bb6f20b"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_074855_453105_FDF2B24C 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:d35 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

--0000000000003f2129059bb6f20b
Content-Type: multipart/alternative; boundary="0000000000003f2127059bb6f209"

--0000000000003f2127059bb6f209
Content-Type: text/plain; charset="UTF-8"

Hello,

This patch fixes the blobmsg_add_json_element() to use libjson-c
json_object_get_int64() instead of json_object_get_int(), since internally
that lib uses int64_t integers for json_type_int. It avoids problem that
all integer values were clamped to INT32_MIN..INT32_MAX range. jshn.c
add_json_element() function was already using full 64-bit value.
This fix automatically makes ubus cli able to display full 64bit values.

regards,

Dainis

--0000000000003f2127059bb6f209
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>This patch fixes the =
blobmsg_add_json_element() to use libjson-c json_object_get_int64() instead=
 of json_object_get_int(), since internally that lib uses int64_t integers =
for json_type_int. It avoids problem that all integer values were clamped t=
o INT32_MIN..INT32_MAX range. jshn.c add_json_element() function was alread=
y using full 64-bit value.<br>This fix automatically makes ubus cli able to=
 display full 64bit values.<br></div><div><br></div><div>regards,<br><br></=
div><div>Dainis<br></div></div>

--0000000000003f2127059bb6f209--

--0000000000003f2129059bb6f20b
Content-Type: application/octet-stream; 
	name="0001-libubox-Handle-64-bit-values-in-blobmsg_add_json_element.patch"
Content-Disposition: attachment; 
	filename="0001-libubox-Handle-64-bit-values-in-blobmsg_add_json_element.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k56wiasj0>
X-Attachment-Id: f_k56wiasj0

RnJvbSBjM2ZhOThmNTUwM2FhNWIxNWU3YjAxNjU0NmFmMzk3YzAxNzEyNDZmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYWluaXMgSm9uaXRpcyA8ZGFpbmlzLmpvbml0aXNAdWJudC5j
b20+CkRhdGU6IEZyaSwgMyBKYW4gMjAyMCAxNjozODozOCArMDIwMApTdWJqZWN0OiBbUEFUQ0hd
IEhhbmRsZSA2NC1iaXQgdmFsdWVzIGluIGJsb2Jtc2dfYWRkX2pzb25fZWxlbWVudCgpCgpsaWJq
c29uLWMganNvbl90eXBlX2ludCB2YWx1ZXMgc3RvcmVzIGFzIGludDY0X3QuIFVzZQpqc29uX29i
amVjdF9nZXRfaW50NjQoKSBpbnN0ZWFkIG9mIGpzb25fb2JqZWN0X2dldF9pbnQoKQp0byBhdm9p
ZCBjbGFtcGluZyB0byBJTlQzMl9NQVguCgpTaWduZWQtb2ZmLWJ5OiBEYWluaXMgSm9uaXRpcyA8
ZGFpbmlzLmpvbml0aXNAdWJudC5jb20+Ci0tLQogYmxvYm1zZ19qc29uLmMgfCAxMCArKysrKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2Jsb2Jtc2dfanNvbi5jIGIvYmxvYm1zZ19qc29uLmMKaW5kZXggMTg1OTIxMS4u
Mzk0ODYxYSAxMDA2NDQKLS0tIGEvYmxvYm1zZ19qc29uLmMKKysrIGIvYmxvYm1zZ19qc29uLmMK
QEAgLTY2LDkgKzY2LDE1IEBAIGJvb2wgYmxvYm1zZ19hZGRfanNvbl9lbGVtZW50KHN0cnVjdCBi
bG9iX2J1ZiAqYiwgY29uc3QgY2hhciAqbmFtZSwganNvbl9vYmplY3QKIAljYXNlIGpzb25fdHlw
ZV9ib29sZWFuOgogCQlibG9ibXNnX2FkZF91OChiLCBuYW1lLCBqc29uX29iamVjdF9nZXRfYm9v
bGVhbihvYmopKTsKIAkJYnJlYWs7Ci0JY2FzZSBqc29uX3R5cGVfaW50OgotCQlibG9ibXNnX2Fk
ZF91MzIoYiwgbmFtZSwganNvbl9vYmplY3RfZ2V0X2ludChvYmopKTsKKwljYXNlIGpzb25fdHlw
ZV9pbnQ6IHsKKwkJaW50NjRfdCBpNjQgPSBqc29uX29iamVjdF9nZXRfaW50NjQob2JqKTsKKwkJ
aWYgKGk2NCA+PSBJTlQzMl9NSU4gJiYgaTY0IDw9IElOVDMyX01BWCkgeworCQkJYmxvYm1zZ19h
ZGRfdTMyKGIsIG5hbWUsICh1aW50MzJfdClpNjQpOworCQl9IGVsc2UgeworCQkJYmxvYm1zZ19h
ZGRfdTY0KGIsIG5hbWUsICh1aW50NjRfdClpNjQpOworCQl9CiAJCWJyZWFrOworCX0KIAljYXNl
IGpzb25fdHlwZV9kb3VibGU6CiAJCWJsb2Jtc2dfYWRkX2RvdWJsZShiLCBuYW1lLCBqc29uX29i
amVjdF9nZXRfZG91YmxlKG9iaikpOwogCQlicmVhazsKLS0gCjIuMTkuMQoK
--0000000000003f2129059bb6f20b--


--===============4056047913758033991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4056047913758033991==--

