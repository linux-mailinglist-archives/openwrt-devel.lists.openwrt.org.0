Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2481D21802
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 14:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i4qbOVgf2JqwnKci7yHloXsTabq8Qitph7VOlo92PL0=; b=nlk3Dh+S5vC+XQ+aJirCMVkUn
	PxOTZGcyoU9z0a2x+0Zkwfg5MvNtRs7a5WDzl0sGJVOo2cXsCuKmbMx47OqfVFJyshtsiP1jmVgcA
	q8xcNV9XRm3Fu5//3tjcGbJBiTDOX+ZsKTGW/KiAaNA9bQ2wlXvb8ER2xh55nufOOUwYmVRb3bBNq
	FjXXy38zauofREM5ADeVApmQ7GqugH/rIFh2pBul1kf+5OklIWGyNjP5qu6UYpgxq2/Qsyy0IRFCL
	MWEZebmrSBlCT96Dlqo68blrflb9Du17tAc2jRP6ttyRHvo8zCHmQLxWSEw6qu08h09hzOCc6Av1M
	JCgcQiR6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbgV-0008KA-7C; Fri, 17 May 2019 12:09:59 +0000
Received: from narfation.org ([2001:4d88:2000:7::2] helo=v3-1039.vlinux.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbgO-0008Jj-0K
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 12:09:53 +0000
Received: from bentobox.localnet
 (p200300C5970D5CFE00000000000002FB.dip0.t-ipconnect.de
 [IPv6:2003:c5:970d:5cfe::2fb])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id C1BD01100D8;
 Fri, 17 May 2019 14:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558094988;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pR1rnYrll8IqPjs5SDPekDPzkb5iuTzIJd1Ep5fJwwY=;
 b=Gd5jW2Uk0O3C0Cp90r8Gz9lL6tG9zk7QJX9LPU8DHwrNIWMQa8ZvQHMTsSm0WKH/PkVGcD
 Bl0+oC2w4If78P3vZ5FHQdvpyCsxV0vA2dyf7Bs+q5bQcXc89FVQ8D5W9KYRL9f7baLfTy
 2uZjG8oMFDhQ/uflwmBaZi0pot4ihLw=
From: Sven Eckelmann <sven@narfation.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 May 2019 14:09:42 +0200
Message-ID: <7149769.sE4Ncdd7rB@bentobox>
In-Reply-To: <CAFGhKbxxMiTGZPoLr_rHVyano=01=pAMBsW=9M+JKEjKcmwE6A@mail.gmail.com>
References: <CAFGhKbxxMiTGZPoLr_rHVyano=01=pAMBsW=9M+JKEjKcmwE6A@mail.gmail.com>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558094988;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pR1rnYrll8IqPjs5SDPekDPzkb5iuTzIJd1Ep5fJwwY=;
 b=hNsElafgcqjzsIInRVbdhgjkKadREkG3lPIOBtg0UBxA8gkvsub2pVwAUKErXg0Bx7fnK4
 Q9iZCrd+rwQlzAhkx4ZOZVB60I6x/RsszK4kipXljvyfndBrSlSKsR6e6VLuKO6wSWSsdc
 fXSeSgy0AGSPOAVPIlNsNFBCGs4jsiY=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558094988; a=rsa-sha256; cv=none;
 b=TqVCP6O9FQurGeNM2rtFobQ3sM8It7dczY+4F94nJCYXmhMnSRsdU6BfTqH5d54HEmBeUv
 KqI/chzZJ4ljVMJ1e0tEDxU7IpUAhkZihfygnpGC10dLJGcGtI+VbO6TuO3eN6Do9OzCBX
 ew8JWny/SyxlqEU6Rw7EoEexa5IcxRM=
ARC-Authentication-Results: i=1; v3-1039.vlinux.de;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_050952_427967_F2A662CD 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] uci: test: use valgrind to detect
 memory corruptions
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Charlemagne Lasse <charlemagnelasse@gmail.com>
Content-Type: multipart/mixed; boundary="===============3455694261790480071=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3455694261790480071==
Content-Type: multipart/signed; boundary="nextPart2247638.Q38ebAyKCO"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2247638.Q38ebAyKCO
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 17 May 2019 11:44:25 CEST Charlemagne Lasse wrote:
> uci is currently a highly problematic software and its library & lua
> bindings cannot be used without corrupting or leaking memory

heap-use-after-free - yes. But I cannot find the memory leak report/test. This 
is what I am currently searching for in some downstream project.

The test scripts work fine after adding 
https://patchwork.ozlabs.org/patch/1100999/

    #
    # Performing tests
    #
    test_import
    test_export
    test_get_parsing
    test_get_section_index_parsing
    test_get_option
    test_get_option_multiline
    test_get_section
    test_set_parsing
    test_set_named_section
    test_set_nonexisting_option
    test_set_nonexisting_option_multiline
    test_set_existing_option
    test_set_existing_option_multiline
    test_add_section
    test_get_parsing
    test_get_parsing_multiline_package
    test_get_parsing_multiline_section
    test_get_parsing_multiline_option
    test_batch_set
    test_batch_comments
    test_revert_section
    test_revert_option
    test_revert_option_multiline
    test_revert_option_long
    test_add_list_config
    test_add_list_get
    test_add_list_show
    test_add_list_changes
    test_del_list
    test_del_list_multiline
    test_add_delta
    test_changes_tailing_parts
    test_changes_missing_value
    
    #
    # Test report
    #
    tests passed:   112 100%
    tests failed:     0   0%
    tests skipped:    0   0%
    tests total:    112 100%

> To notice such problems faster, start the uci testsuite with the
> valgrind memory checker.

Patch doesn't apply (adding it manually works).

Kind regards,
	Sven
--nextPart2247638.Q38ebAyKCO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzepIYACgkQXYcKB8Em
e0ZiWg//S9yNzuc5bi1YSVPGGSBQJOZzS3gyz4kCkvl5TvjWt60zioCBm/r/mw+B
9hYeXO+51KS7GkoJtdycQ/Caba5PcT79OokrM02X1d6W/loqHdoLy79MJaqnpMYb
42UiL5+pcmqwExdatKNQDZ6DNSaQ4exuCgQsqwncwvmKp0y7uemgTk07EL3UL+c7
DEED7gP1bkuRxdgBXsBTgCVGmd2nQqPh5wiucPCXhbk2vHIfNb0tOpFmW0NTIkcn
a+Ig/SFaWox4vtbJSnEol+Klx8/W6dSdnP7Ygto6C1ab85CZs2xtv2Av+EJd7OEl
szAt6nAwPZQcR0CUfQDB41pKnz2C9RcLEmxKKJXSItPGcC6ClSPldZr5uhwD7nky
w0CSJK+bxwE4aixEfAvmQaMwSm3133yswWQKgPvw0WtfA9z4lo0OCL+iwjaP1Q6o
SKPNODuUs9RgjXklI6wcUjUhSJlqFqh9n0aWHnQoBeMu0tiFuJ11Lh2UetTyFZ9z
ygZ78KNEp5WVE7/6gfm8kBLQkTtIIH+1E2Z4P9k7UDtUZuLt8DD6d5CH4utrXSTZ
WwPQbAQQPbszLxhnJd7G6yAaFviFYUvnOlBFUIL26uUYe5a+GQcx0uVsYhdfr994
fP0nOWtQ/GoWzY6xv0DTZwENChWIzvysfXn0x6/8IZ2pJTYcfzM=
=IW8X
-----END PGP SIGNATURE-----

--nextPart2247638.Q38ebAyKCO--





--===============3455694261790480071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3455694261790480071==--




