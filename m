Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229B3EEAC1
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 22:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WUW4nB3RxJbcqDgF4PFTV4BscDfDo1KQPqoyf+txNpw=; b=RxNmSHRIbnVhhKKVayeBRAoiY
	m5nrq0CG9r0+0YY5f8t8iSpF7RxjUxNHBZQr+SFXQ0RfgfYxHWVtcJ0XAl+iTo+gEMlatA9CiCIWT
	X4shg+5gg2pqyW7gd6TC8T0t80vW8em5WOeAHnlBIlSFinSHb2FvOf/0HsuOHVUAsJvI0m/gNd+Hv
	9DhpyJUheMPPlXxkiQDMpeLNWq1Wvv3wsX9jXS222dbRv/uWRYZKf63quZxqGgLLVeT7S4WahxxZm
	Ptr5mEHJGOcg5d3xsyBIEFngfhqGO/VvuPg2B8Uf/NvpGa5CSly2kKZg6SwVmyDfp0VOw2rl6TwaQ
	5hN9v4QdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjc6-0002vx-Aq; Mon, 04 Nov 2019 21:10:14 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjbj-0002sN-LU
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 21:09:54 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 476QR11MN2zQlG1;
 Mon,  4 Nov 2019 22:09:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id 4zC2YKds-QO2; Mon,  4 Nov 2019 22:09:30 +0100 (CET)
To: Yousong Zhou <yszhou4tech@gmail.com>
References: <20191101160634.25559-1-hauke@hauke-m.de>
 <20191101160634.25559-2-hauke@hauke-m.de>
 <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <7eb3887e-fc10-6c52-d4b9-2b8ff98dd70b@hauke-m.de>
Date: Mon, 4 Nov 2019 22:09:03 +0100
MIME-Version: 1.0
In-Reply-To: <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_130952_019047_7FA2E3DE 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH uci 2/2] build: Add -Wclobbered to
 detect problems with longjmp
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============4005273257927984723=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4005273257927984723==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="cWRl0chktXr5cgGWrr3FfrMQKrqDEeClP"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--cWRl0chktXr5cgGWrr3FfrMQKrqDEeClP
Content-Type: multipart/mixed; boundary="8GLjRsUIV10pafOaURqGG0SJW1H3ZsG3p";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Yousong Zhou <yszhou4tech@gmail.com>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <7eb3887e-fc10-6c52-d4b9-2b8ff98dd70b@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH uci 2/2] build: Add -Wclobbered to detect
 problems with longjmp
References: <20191101160634.25559-1-hauke@hauke-m.de>
 <20191101160634.25559-2-hauke@hauke-m.de>
 <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>
In-Reply-To: <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>

--8GLjRsUIV10pafOaURqGG0SJW1H3ZsG3p
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11/4/19 4:29 AM, Yousong Zhou wrote:
> Hi Hauke
>=20
> On Sat, 2 Nov 2019 at 00:07, Hauke Mehrtens <hauke@hauke-m.de> wrote:
>>
>> When we jump back to a save point in UCI_THROW() with longjmp all the
>> registers will be reset to the old values when we called UCI_TRAP_SAVE=
()
>> last time, but the memory is not restored. This will revert all the
>> variables which are stored in registers, but not the variables stored =
on
>> the stack.
>>
>> Mark all the variables which the compiler could put into a register as=

>> volatile to store them safely on the stack and make sure they have the=

>> defined current values also after longjmp was called.
>>
>> This also activates a compiler warning which should warn us in such
>> cases.
>> This could fix some potential problem in error paths like the one
>> reported in CVE-2019-15513.
>>
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>=20
> Not sure I understand the internals right.  It seems to me a few
> changes below may not be necessary.  The -Wclobber check can produce
> false-positives right?  Are these changes made mainly for "better safe
> than regret"?

Hi Yousong,

Yes, some of the volatiles are not necessary, but I activated the
warning -Wclobbered and GCC is not so intelligent and warns for all
variables which are written after setjmp() is called.
When we activate the warning everyone gets this warning and no one will
introduce such a problem again, but we probably have volatile also in
some places where it is not needed.

I want to handle this part of the setjmp() manpage:
--------------------------------
The  compiler  may  optimize  variables into registers, and longjmp()
may restore the values of other registers in addition to the stack
pointer and program counter.  Consequently, the values of automatic
variables are unspecified after a call to longjmp() if they meet all the
following criteria:
* they are local to the function that made the corresponding setjmp()
  call;
* their values are changed between the calls to setjmp() and longjmp();
  and
* they are not declared as volatile.
--------------------------------

The GCC documentation says this:
--------------------------------
-Wclobbered
    Warn for variables that might be changed by longjmp or vfork. This
warning is also enabled by -Wextra.
--------------------------------

Hauke


--8GLjRsUIV10pafOaURqGG0SJW1H3ZsG3p--

--cWRl0chktXr5cgGWrr3FfrMQKrqDEeClP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl3Ak28ACgkQ8bdnhZyy
68da2Af8DaIVl1a/U5iF1QFdD3rGVskeNTTan2Plkj78hyADzkzOArwpuSL7kTuh
ugOPAfdoFxoNSv/CRJ9PVEsMDmO6IMhQVNY6UX4+m3vnn+HZQYU0z6ekBMxRZlJ9
5H6av5lgFXI1RBshTLq65kNzuDOejUi7xPhbKlmXhCttKv4wD+ZyTE3Va9IGSVC8
aBqeLAPCc4mOnuA6BI+EcSmkPklnmrJsc6Fqwhxgh+7G5TZeAmEaX6Dc08t3FauJ
MAz/80cz8NbUz+Fsy0t1IW0oUOXhIr2jn10rWudWu2ItvSxPTwxHXhSDKowtT/WE
6jr2w4MyiWL01Q3JVnonsFBzNf++wg==
=UVU6
-----END PGP SIGNATURE-----

--cWRl0chktXr5cgGWrr3FfrMQKrqDEeClP--


--===============4005273257927984723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4005273257927984723==--

