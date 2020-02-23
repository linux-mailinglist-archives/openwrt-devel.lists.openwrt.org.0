Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C443E1699DA
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Feb 2020 20:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bcadcVkyBra9XpyP8rt/Bi3+zpUX77DSaFnPTIbwbmM=; b=ntD
	s7HZh51F0FKJcmVzM0gvNzCYO6t+hAgCjCRuI7xgq7+NH5Fz0hBKbZrKMTG/+TQ2iFKWihFZ4WrI/
	h05K6OJuZgOjgEihoNy7b7NWf7c4AVgWOYjhJEo6lD3CzqCBUKyCqj6xpc10L68VklXX1kRIvSbGc
	ru57hSUE238zgjASOp5owyx13ETM5j1NGg1KxDl8PDb/4y81guZmBx5B47nxSzy1wnSjb59swdpg/
	AKbeiuornd3VPGYRnz5Yc9RzSCCbUEcy8+LXG8Wp2EuUQOWQVH+tbSx1zxgnjAiZblHT4hvgLI/9O
	g+xjyEiz6ot0QhdtlRj+tTQeX4S/87g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5xIA-0001B7-4V; Sun, 23 Feb 2020 19:51:54 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5xI4-0001Ap-1W
 for openwrt-devel@lists.openwrt.org; Sun, 23 Feb 2020 19:51:49 +0000
Received: from desktop ([188.193.230.10]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MuUvS-1jMnLp0Clm-00rVM9 for <openwrt-devel@lists.openwrt.org>; Sun, 23 Feb
 2020 20:51:43 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Sun, 23 Feb 2020 20:51:42 +0100
Message-ID: <002e01d5ea82$ac0e8b20$042ba160$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdXqgcrnOZHmsU6CTlCf7WmUwOHGjw==
Content-Language: de
X-Provags-ID: V03:K1:EVV4mdRYb7nn1DI817Qt0iOHa0w3z9rmcVglOr2feT5zF7KgkK2
 EkICbpooQFUYIAbzTHL5077gD6y7ANEqd5nJeh7dTmuCEzTWpvSHQ4FFP7Swu8D75yFQRX0
 7/TxsllAXpr7JoJTJjIroIEr9jYxMaj27NGhF1y49Gp5ha9/JHdDfXa8klJDxJEhb3QY/53
 BHKD/VLenXWdgU2FkkXwQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tp30WkP4D1A=:oTEPArncWno/73IkAsINX8
 ANhzMsdQ10c2uoTJrFztIdPTrRWhNGeISF33bI75xIbiV3jkRgPwnVXCoer7bziPzMh0Vz46e
 3BgXk5wFnx7rqfOjCzWqTAEAFWE06sKCRWVQ+v4CkUIutJjULlv04+9laF25OvP3CsGeS5Pyx
 zoyHQ9am4FhI65UHpz1R93CgSUW0JeWOUJ4FlIn8K/CXiFnrwpDqSPr9LGULQPHwR4IZzhhRW
 Ot/8ruGsYsHbyiIlaIFt+Fu4t5REyq71kNe6P22OsVKMeLaj+88oWJ3oGnsT1XzKXqd/w1oX5
 v+ta04R7nMpOkHL7liSFfdya6uNNcTXyZls5WpYEjhHXJFXRUAUXBLxIzhWov58vCAZX/5319
 nBQQ6MIo9rFjU5qrxi9DXJIvbJovlDzgVXt4yDlTYXOqObAZgFsq5SYtFWbwXXXVk+dTF/3+X
 AWVsS8ZOqFyEmig9YDeo+EPoHodEU7KC/hd0s/rjP6II3R6kYnOn5TWWYxNaKF9oLE7fkxdqJ
 UnMsPMc/cPI4qgri8vIim0JiTGlCmCfD0y99uK5Ca1jRgxsEsKGebfZew4JQ1O8OjgAOY3goi
 icMHENlohwI2fOSUowJ+u6OAf6oR6F5tdg+PvBujH1qA6aQXLUZSHq4cBoVPUZW9HME2m2Ogo
 gpxpkovhYlW44jT9hyaCSaWszKmbygLHlQil4ev6iKShIzT8aFcp2V1xaC/eGG8iNXASyIe4U
 iOT/9M+M+Koe7UiiD33qvlcBGx49J7daJa0SVBYFf7a6iZWZareN6ic7lnp47GHD45ONpUPeK
 P3vug6Ix2TWDiYfEaXjCmN53ajy57iixf7aeOxVUYXXMGimoBsUY40kMTdSxLr2x7Kju6MJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_115148_379018_52D9ACB3 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] gpio-export,output and GPIO_ACTIVE_*
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
Content-Type: multipart/mixed; boundary="===============8047604682394707804=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8047604682394707804==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=Jh/pPhNRedcWyy=-="

This is a multipart message in MIME format.

--=-=Jh/pPhNRedcWyy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

when defining gpio-export nodes, I'm never really sure about how the values=
 for "gpio-export,output" and GPIO_ACTIVE_HIGH/LOW in gpios have to be set =
up correctly in relation to each other.

I also was not able to retrieve a particular system in how this is set up c=
urrently (for different devices).

It would be nice if somebody could elaborate this to me (I've found several=
 shorter explanations in the PR comments throughout GitHub, but they unfort=
unately were never comprehensive.)

(And I assume the same logic will apply to gpio-hogs with output-low/high a=
nd gpios parameter?)

Best

Adrian

--=-=Jh/pPhNRedcWyy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5S18oACgkQoNyKO7qx
AnBCig/+NxKCFelkzUutVm7dM3oKN1pxO/xhY7RI0eU9pBd/9rzyf8cHixBhvVXC
0AsxuVQgM+rtEYxNwT4WufUmNNQIetvqgPD1IDTs1907gxukERfLLAbfSVhprD9V
TaWMb/rCmlYtVCbGnRQN8n8L7ssri1dPaeyny63uPWcwG8pdVm8PN47yqJWCA3yC
pHjm91KlsLKQ00XQQ+eEcyovtHeUSXlCZfAP8XbS4dRLz1JvRKpjfswxa9ab8k+/
kGsNrA5eHVoSABKhgleg6LDg2Jiq8DG0posKLfTqDQX12MFuMDYlxjMrqMWNOhh8
5jmP2ZTFAsXAtGrCTfWANW5KKc6kTEol1WK7ZscCTzg/yGqjosM05Hg+xnYLBARG
7DOZ757fN0fslVKp+WbyUmXnFs1kp7mW2vHNc8VBKFq4Z6XrChuXxFTa0suEVDEs
SY/a5/FSfR6ZQnA8Efv2/dwvmBeOAusdgvIUSnL1HBA+3/GHaPJRFVhlmaGHIqAO
qF/bSygt6BAkeo+Fu+iIbaLi5Cu5/EK9utv6khXp4s4OTL3BDKWpaS6NKWq/NOn4
3DtzuxrhPZyH6whLy23F7haAY5Jl8aT5+rvqWCvDFv+YUiN8IAzYeSrziYNtwtUT
anzmtg5g4JULBaYsdUegwWnzMWJl5HTJusnUivGpYqbxfkrHRSw=
=MmoS
-----END PGP SIGNATURE-----


--=-=Jh/pPhNRedcWyy=-=--



--===============8047604682394707804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8047604682394707804==--


